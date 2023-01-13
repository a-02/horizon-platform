{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedLists           #-}
{-# LANGUAGE OverloadedStrings         #-}
{-# LANGUAGE ViewPatterns              #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}

module ShellRC where

import           Brick                     (BrickEvent (VtyEvent), EventM,
                                            Padding (..),
                                            ViewportType (Vertical), Widget,
                                            attrMap, attrName, bg, fg, hBox,
                                            halt, on, padLeft, txt, vScrollBy,
                                            viewport, viewportScroll, visible,
                                            withAttr)
import qualified Brick
import qualified Brick.Widgets.List        as Brick
import           Brick.Widgets.Table       (Table, renderTable, table)
import qualified Brick.Widgets.Table       as Brick
import qualified Control.Lens              as L
import           Cursor.List.NonEmpty
import qualified Data.Aeson                as A
import qualified Data.Aeson.Key            as A
import qualified Data.Aeson.KeyMap         as A
import qualified Data.Aeson.Lens           as L
import qualified Data.ByteString.Lazy      as B
import           Data.ByteString.Lazy.UTF8 as BLU
import qualified Data.ByteString.Lazy.UTF8 as BU
import           Data.Kind                 (Type)
import qualified Data.List
import           Data.List.NonEmpty        (NonEmpty ((:|)))
import qualified Data.Map                  as Map
import           Data.Maybe                (fromMaybe)
import           Data.Text                 (Text)
import qualified Data.Text                 as T
import qualified Data.Text.Encoding        as T
import qualified Data.Vector               as V
import qualified Data.Yaml                 as Y
import qualified Data.Yaml.Pretty          as Y
import qualified Dhall
import           Graphics.Vty.Attributes
import           Graphics.Vty.Input.Events
import           Horizon.Spec
import           Network.HTTP.Simple
import           Path
import           Procex.Prelude
import           Procex.Shell              hiding (promptFunction)
import           System.Directory
import           System.Environment

promptFunction :: [String] -> Int -> IO String
promptFunction _modules _line = do
  d <- getEnv "PWD"
  setCurrentDirectory d
  pure $ d <> ": "

_init :: IO ()
_init = do
  initInteractive
  getEnv "REALHOME" >>= setEnv "HOME" -- Set by the script that launches GHCi

hackagePkg :: Text -> IO A.Value
hackagePkg x = do
  k <- parseRequest $ "http://hackage.haskell.org/package/" <> T.unpack x
  getResponseBody <$> httpJSON k

hackagePkgLatest :: Text -> IO Text
hackagePkgLatest x = Prelude.last . Map.keys . A.toMapText . L.view L._Object <$> hackagePkg x

runAllFeedback :: IO ()
runAllFeedback = do
  (x :: Either Y.ParseException A.Value) <- Y.decodeFileEither "feedback.yaml"
  t <- getEnv "TERM"
  let y = Map.keys . A.toMapText . L.view (L._Right . L._Object . L.ix "loops" . L._Object) $ x
  mapM_ (captureLazyNoThrow . mq t "--command" "nix" "run" "github:NorfairKing/feedback" "--" . T.unpack) y

renderUrl :: Url -> Widget n
renderUrl (MkUrl x) = txt x

renderRepo :: Repo -> Widget n
renderRepo (MkRepo x) = renderUrl x

renderRevision :: Revision -> Widget n
renderRevision (MkRevision x) = txt x

renderName :: Name -> Widget n
renderName (MkName x) = txt x

renderVersion :: Version -> Widget n
renderVersion (MkVersion x) = txt x

renderGitSource :: GitSource -> Widget n
renderGitSource (MkGitSource u r s) = hBox (fmap (padLeft (Pad 1)) [txt "Git", renderRepo u, renderRevision r])

renderHackageSource :: HackageSource -> Widget n
renderHackageSource (MkHackageSource n v) = hBox (fmap (padLeft (Pad 1)) [txt "Hackage", renderName n, renderVersion v])

renderHaskellSource :: HaskellSource -> Widget n
renderHaskellSource (FromGit x)     = renderGitSource x
renderHaskellSource (FromHackage x) = renderHackageSource x

type PackageListCursor :: Type
type PackageListCursor = NonEmptyCursor (Name, HaskellPackage) (Name, HaskellPackage)

packageListToMatrix :: PackageListCursor -> [[Widget n]]
packageListToMatrix (NonEmptyCursor xs y zs) = V.toList $ mconcat [
  fmap (\(k, v) -> [renderName k, renderHaskellSource $ source v]) $ V.fromList $ reverse $ Data.List.take 100 xs,
  pure $ (\(k, v) -> fmap (withAttr (attrName "highlight")) [visible (renderName k), renderHaskellSource $ source v]) $ y,
  fmap (\(k, v) -> [renderName k, renderHaskellSource $ source v]) $ V.fromList $ Data.List.take 100 zs
  ]

packageListToTable :: PackageListCursor -> Table n
packageListToTable = table . packageListToMatrix

renderPackageList :: PackageListCursor -> Widget Text
renderPackageList = viewport "Viewy" Vertical . renderTable . packageListToTable

handleEvent :: BrickEvent Text e -> EventM Text PackageListCursor ()
handleEvent (VtyEvent (EvKey KDown [])) = do
  vScrollBy (viewportScroll "Viewy") 2
  Brick.modify (\s -> fromMaybe s $ nonEmptyCursorSelectNext id id s)
handleEvent (VtyEvent (EvKey KUp [])) = do
  vScrollBy (viewportScroll "Viewy") (-2)
  Brick.modify (\s -> fromMaybe s $ nonEmptyCursorSelectPrev id id s)
handleEvent (VtyEvent (EvKey (KChar 'q') [])) = do
  halt
handleEvent _ = pure ()


appAttrMap = attrMap defAttr [ (attrName "highlight", fg yellow)
                             , (attrName "warning", bg magenta)
                             , (attrName "good", white `on` green)
                             ]

packageListMain :: Brick.App PackageListCursor e Text
packageListMain = Brick.App (pure . renderPackageList) (const $ const Nothing) handleEvent (pure ()) (const (appAttrMap))

go :: IO ()
go = do
  x <- Dhall.inputFile @HorizonExport Dhall.auto "horizon.dhall"
  case x of
    MakePackageSet (MkPackageSetExportSettings _ _ (MkPackageSet _ (MkPackageList (Map.toList -> y:ys)))) -> Brick.defaultMain packageListMain $ makeNonEmptyCursor id (y :| ys)
  pure ()

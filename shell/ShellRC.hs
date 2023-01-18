{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedLists           #-}
{-# LANGUAGE OverloadedStrings         #-}
{-# LANGUAGE ViewPatterns              #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -fplugin=Polysemy.Plugin #-}

module ShellRC where

import Polysemy.State
import Control.Monad (void)
import Control.Monad.IO.Class
import           Brick                     (BrickEvent (VtyEvent), EventM, gets,
                                            Padding (..),
                                            ViewportType (Vertical), Widget,
                                            attrMap, attrName, bg, fg, hBox,
                                            halt, on, padLeftRight, txt, vScrollBy,
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
import Polysemy
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
renderGitSource (MkGitSource u r s) = hBox (fmap (padLeftRight 1) [txt "Git", renderRepo u, renderRevision r])

renderHackageSource :: HackageSource -> Widget n
renderHackageSource (MkHackageSource n v) = hBox (fmap (padLeftRight 1) [txt "Hackage", renderName n, renderVersion v])

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

scrollDown :: EventM e (PackageListCursor, c) ()
scrollDown =  Brick.modify (\(s, c) -> (fromMaybe s $ nonEmptyCursorSelectNext id id s, c))

scrollUp :: EventM e (PackageListCursor, c) ()
scrollUp =  Brick.modify (\(s, c) -> (fromMaybe s $ nonEmptyCursorSelectPrev id id s, c))

type Vim :: Type -> (Type -> Type) -> Type -> Type
data Vim y m a where
  Del :: Vim y m ()
  Find :: Vim y m ()
  MoveDown :: Vim y m ()
  MoveEndOfFile :: Vim y m ()
  MoveLeft :: Vim y m ()
  MoveRight :: Vim y m ()
  MoveStartOfFile :: Vim y m ()
  MoveUp :: Vim y m ()
  Paste :: Vim y m ()
  Quit :: Vim y m ()
  Write :: Vim y m ()
  Yank :: Vim y m ()

makeSem ''Vim

interpretVim :: Member (Embed (EventM e (PackageListCursor, c))) r => Sem (Vim y ': r) a -> Sem r a
interpretVim = interpret $ \case
  Del -> embed $ pure ()
  Find -> embed $ pure ()
  MoveDown -> embed $ scrollDown
  MoveEndOfFile -> embed $ Brick.modify (\(x, c) -> (nonEmptyCursorSelectLast id id x, c))
  MoveLeft -> embed $ pure ()
  MoveRight -> embed $ pure ()
  MoveStartOfFile -> embed $ Brick.modify (\(x, c) -> (nonEmptyCursorSelectFirst id id x , c))
  MoveUp -> embed $ scrollUp
  Paste -> embed $ pure ()
  Quit -> embed $ halt
  Yank -> embed $ pure ()

brickEventToVim :: Members '[Vim y, State (Last Char)] r => BrickEvent Text e -> Sem r ()
brickEventToVim (VtyEvent (EvKey KDown [])) = clear >> moveDown
brickEventToVim (VtyEvent (EvKey KUp [])) = moveUp
brickEventToVim (VtyEvent (EvKey (KChar 'j') [])) = moveDown
brickEventToVim (VtyEvent (EvKey (KChar 'k') [])) = moveUp
brickEventToVim (VtyEvent (EvKey (KChar 'G') [])) = moveEndOfFile
brickEventToVim (VtyEvent (EvKey (KChar 'g') [])) = do
  x <- get
  case x of
    Just 'g' -> do 
       moveStartOfFile 
       put Nothing
    _ -> put $ Just 'g'
brickEventToVim (VtyEvent (EvKey (KChar 'q') [])) = quit
brickEventToVim (VtyEvent (EvKey (KChar 'w') [])) = write
brickEventToVim _ = pure ()

 
semStateToBrickState :: Member (Embed (EventM e s)) r => L.Lens' s t -> Sem (State t ': r) a -> Sem r a
semStateToBrickState f = interpret $ \case
  Put x -> embed $ Brick.put . L.set f x =<< Brick.get
  Get   -> embed $ L.view f <$> Brick.get


handleEvent :: BrickEvent Text e -> EventM Text (PackageListCursor, Maybe Char) ()
handleEvent x = do
  runM . semStateToBrickState (L.lens snd (\z k -> (fst z, k))) . interpretVim . brickEventToVim $ x
handleEvent (VtyEvent (EvKey (KChar 'b') [])) = do
  (MkName x, _) <- Brick.gets (nonEmptyCursorCurrent . fst)
  let z = mq
           "nix"
            "build"
            "-L"
            (T.unpack $ ".#" <> x)
            (pipeHOut 1 $ \_ stdout -> B.hGetContents stdout >>= B.putStr)
            (pipeHOut 2 $ \_ stderr -> B.hGetContents stderr >>= B.writeFile "./log")
  pure ()
handleEvent _ = pure ()


appAttrMap = attrMap defAttr [ (attrName "highlight", fg yellow)
                             , (attrName "warning", bg magenta)
                             , (attrName "good", white `on` green)
                             ]

packageListMain :: Brick.App (PackageListCursor, Maybe Char) e Text
packageListMain = Brick.App (pure . renderPackageList . fst) (const $ const Nothing) handleEvent (pure ()) (const (appAttrMap))

go :: IO ()
go = do
  x <- Dhall.inputFile @HorizonExport Dhall.auto "horizon.dhall"
  case x of
    MakePackageSet (MkPackageSetExportSettings _ _ (MkPackageSet _ (MkPackageList (Map.toList -> y:ys)))) -> Brick.defaultMain packageListMain $ (makeNonEmptyCursor id (y :| ys), Nothing)
  pure ()

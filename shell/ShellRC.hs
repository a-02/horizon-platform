{-# LANGUAGE AllowAmbiguousTypes       #-}
{-# LANGUAGE DerivingStrategies        #-}
{-# LANGUAGE LambdaCase                #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedLists           #-}
{-# LANGUAGE OverloadedStrings         #-}
{-# LANGUAGE TemplateHaskell           #-}
{-# LANGUAGE TypeFamilies              #-}
{-# LANGUAGE ViewPatterns              #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -fplugin=Polysemy.Plugin #-}

module ShellRC where

import           Brick                     (BrickEvent (VtyEvent), EventM,
                                            Padding (..),
                                            ViewportType (Vertical), Widget,
                                            attrMap, attrName, bg, fg, gets,
                                            hBox, halt, on, padLeftRight, txt,
                                            vScrollBy, viewport, viewportScroll,
                                            visible, withAttr)
import qualified Brick
import           Brick.Widgets.Border
import qualified Brick.Widgets.List        as Brick
import           Brick.Widgets.Table       (Table, renderTable, table)
import qualified Brick.Widgets.Table       as Brick
import qualified Control.Lens              as L
import           Control.Monad             (forM, void)
import           Control.Monad.IO.Class
import           Cursor.List.NonEmpty
import qualified Data.Aeson                as A
import qualified Data.Aeson.Key            as A
import qualified Data.Aeson.KeyMap         as A
import qualified Data.Aeson.Lens           as L
import qualified Data.ByteString           as B
import           Data.ByteString.Lazy.UTF8 as BLU
import qualified Data.ByteString.Lazy.UTF8 as BU
import           Data.Kind                 (Type)
import qualified Data.List
import           Data.List.NonEmpty        (NonEmpty ((:|)))
import qualified Data.Map                  as Map
import           Data.Maybe                (fromMaybe)
import           Data.Monoid
import           Data.Text                 (Text)
import qualified Data.Text                 as T
import qualified Data.Text.Encoding        as T
import qualified Data.Text.Encoding.Error  as T
import qualified Data.Vector               as V
import qualified Data.Yaml                 as Y
import qualified Data.Yaml.Pretty          as Y
import qualified Dhall
import           Dhall.Core
import qualified Dhall.Map                 as DMap
import           Dhall.Src
import           GHC.Exts
import           Graphics.Vty.Attributes
import           Graphics.Vty.Input.Events
import           Horizon.Spec
import qualified Horizon.Spec.Lens as L
import qualified Horizon.Spec.Pretty as H
import           Network.HTTP.Simple
import           Path
import           Polysemy
import           Polysemy.State
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
renderGitSource (MkGitSource u r s) = hBox (fmap (padLeftRight 1) [txt "Git", renderRepo u, renderRevision r])

renderHackageSource :: HackageSource -> Widget n
renderHackageSource (MkHackageSource n v) = hBox (fmap (padLeftRight 1) [txt "Hackage", renderName n, renderVersion v])

renderHaskellSource :: HaskellSource -> Widget n
renderHaskellSource (FromGit x)     = renderGitSource x
renderHaskellSource (FromHackage x) = renderHackageSource x

type PackageListCursor :: Type
type PackageListCursor = NonEmptyCursor (Name, HaskellPackage, Text) (Name, HaskellPackage, Text)

type HorizonTUIState :: Type
data HorizonTUIState where
  MkHorizonTUIState :: {
    packageListCursor :: PackageListCursor,
    lastChar :: Maybe Char
  } -> HorizonTUIState

packageListToMatrix :: PackageListCursor -> [[Widget n]]
packageListToMatrix (NonEmptyCursor xs y zs) = V.toList $ mconcat [
  fmap (\(k, v, _) -> [renderName k, renderHaskellSource $ source v]) $ V.fromList $ reverse $ Data.List.take 100 xs,
  pure $ (\(k, v, _) -> fmap (withAttr (attrName "highlight")) [visible (renderName k), renderHaskellSource $ source v]) $ y,
  fmap (\(k, v, _) -> [renderName k, renderHaskellSource $ source v]) $ V.fromList $ Data.List.take 100 zs
  ]

renderCursorPackageInfo ::  PackageListCursor -> Widget n
renderCursorPackageInfo (NonEmptyCursor _ y _) = txt . L.view L._3 $ y

packageListToTable :: PackageListCursor -> Table n
packageListToTable = table . packageListToMatrix

renderPackageList :: Text -> PackageListCursor -> Widget Text
renderPackageList x = viewport x Vertical . renderTable . packageListToTable

nonEmptyCursorSelectNextClamped :: (a -> b) -> (b -> a) -> NonEmptyCursor a b -> NonEmptyCursor a b
nonEmptyCursorSelectNextClamped f g s = fromMaybe s $ nonEmptyCursorSelectNext f g s

nonEmptyCursorSelectPrevClamped :: (a -> b) -> (b -> a) -> NonEmptyCursor a b -> NonEmptyCursor a b
nonEmptyCursorSelectPrevClamped f g s = fromMaybe s $ nonEmptyCursorSelectPrev f g s

scrollDown :: EventM e HorizonTUIState ()
scrollDown =  Brick.modify (\(MkHorizonTUIState s c) -> MkHorizonTUIState (nonEmptyCursorSelectNextClamped id id s) c)

scrollUp :: EventM e HorizonTUIState ()
scrollUp =  Brick.modify (\(MkHorizonTUIState s c) -> MkHorizonTUIState (nonEmptyCursorSelectPrevClamped id id s) c)

endOfFile :: EventM e HorizonTUIState ()
endOfFile = Brick.modify (\(MkHorizonTUIState s c) -> MkHorizonTUIState (nonEmptyCursorSelectLast id id s) c)

startOfFile :: EventM e HorizonTUIState ()
startOfFile = Brick.modify (\(MkHorizonTUIState s c) -> MkHorizonTUIState (nonEmptyCursorSelectFirst id id s) c)

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

interpretVim :: Member (Embed (EventM e HorizonTUIState)) r => Sem (Vim y ': r) a -> Sem r a
interpretVim = interpret $ \case
  Del             -> embed $ pure ()
  Find            -> embed $ pure ()
  MoveDown        -> embed $ scrollDown
  MoveEndOfFile   -> embed $ endOfFile
  MoveLeft        -> embed $ pure ()
  MoveRight       -> embed $ pure ()
  MoveStartOfFile -> embed $ startOfFile
  MoveUp          -> embed $ scrollUp
  Paste           -> embed $ pure ()
  Quit            -> embed $ halt
  Yank            -> embed $ pure ()

brickEventToVim :: Members '[Vim y, State (Maybe Char)] r => BrickEvent Text e -> Sem r ()
brickEventToVim (VtyEvent (EvKey KDown [])) = moveDown
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


semStateToBrickState :: Member (Embed (EventM e s)) r => L.Lens' s t -> Sem (State t ': r) a -> Sem r a
semStateToBrickState f = interpret $ \case
  Put x -> embed $ Brick.put . L.set f x =<< Brick.get
  Get   -> embed $ L.view f <$> Brick.get

handleEvent :: BrickEvent Text e -> EventM Text HorizonTUIState ()
handleEvent (VtyEvent (EvKey (KChar 'b') [])) = do
  (MkName x, _, _) <- Brick.gets (nonEmptyCursorCurrent . packageListCursor)
  _ <- liftIO $ captureLazyNoThrow $ mq
           "nix"
            "build"
            "-L"
            (T.unpack $ ".#" <> x)
            (pipeHOut 1 $ \_ stdout -> B.hGetContents stdout >>= (\_ -> pure ()))
            (pipeHOut 2 $ \_ stderr -> B.hGetContents stderr >>= (\_ -> pure ()))
  pure ()
handleEvent x = do
  runM . semStateToBrickState (L.lens lastChar (\(MkHorizonTUIState s c) x -> MkHorizonTUIState s x )) . interpretVim . brickEventToVim $ x
handleEvent _ = pure ()


appAttrMap = attrMap defAttr [ (attrName "highlight", fg yellow)
                             , (attrName "warning", bg magenta)
                             , (attrName "good", white `on` green)
                             ]

packageListMain :: Brick.App HorizonTUIState e Text
packageListMain = Brick.App ((\x -> pure $ hBox [renderPackageList "F" x, border $ renderCursorPackageInfo x]) . packageListCursor) (const $ const Nothing) handleEvent (pure ()) (const (appAttrMap))

buildCursor :: HorizonExport -> IO PackageListCursor
buildCursor (MakePackageSet (MkPackageSetExportSettings d _ (MkPackageSet _ (MkPackageList (Map.toList -> y:ys))))) = do
  (z : zs) <- forM (y:ys) $ \(x, k) -> do
    q <- readDerivation d x
    pure (x, k, q)
  pure $ makeNonEmptyCursor id (z :| zs)

readDerivation :: PackagesDir -> Name -> IO Text
readDerivation (MkPackagesDir d) (MkName x) = do
  f' <- parseRelFile $ T.unpack (x <> ".nix")
  let j = d </> f'
  q <- B.readFile $ toFilePath j
  pure $ T.decodeUtf8Lenient q

loadHorizon :: IO HorizonExport
loadHorizon = Dhall.inputFile @HorizonExport Dhall.auto "horizon.dhall"

go :: IO ()
go = do
  x <- loadHorizon
  k <- buildCursor x
  Brick.defaultMain packageListMain $ MkHorizonTUIState k Nothing
  pure ()

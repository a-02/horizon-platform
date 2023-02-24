{-# LANGUAGE AllowAmbiguousTypes       #-}
{-# LANGUAGE DerivingStrategies        #-}
{-# LANGUAGE LambdaCase                #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedLists           #-}
{-# LANGUAGE OverloadedStrings         #-}
{-# LANGUAGE TemplateHaskell           #-}
{-# LANGUAGE TypeFamilies              #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -fplugin=Polysemy.Plugin #-}

module ShellRC where

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
import qualified Horizon.Spec.Lens         as L
import qualified Horizon.Spec.Pretty       as H
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

loadHorizon :: IO HorizonExport
loadHorizon = Dhall.inputFile @HorizonExport Dhall.auto "horizon.dhall"

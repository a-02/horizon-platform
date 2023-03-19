{ mkDerivation, aeson, async, base, bytestring, conduit, exceptions
, lib, monad-control, resourcet, servant-server, text, wai
, wai-websockets, warp, websockets
}:
mkDerivation {
  pname = "servant-websockets";
  version = "2.0.0";
  sha256 = "c4262b5d5a01a692d8d9ca4abd735abe1ce7288ac456f5e819b5c358adbe43f7";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson async base bytestring conduit exceptions monad-control
    resourcet servant-server text wai wai-websockets warp websockets
  ];
  executableHaskellDepends = [
    aeson base conduit servant-server text wai warp websockets
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/moesenle/servant-websockets#readme";
  description = "Small library providing WebSocket endpoints for servant";
  license = lib.licenses.bsd3;
  broken = false;
}
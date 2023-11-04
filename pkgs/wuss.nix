{ mkDerivation, base, bytestring, crypton-connection, exceptions
, lib, network, websockets
}:
mkDerivation {
  pname = "wuss";
  version = "2.0.1.4";
  sha256 = "5b7dbd2e9b1676fb663833249db1c21618fe8521f88fecc5abf2975e8fcca442";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring crypton-connection exceptions network websockets
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Secure WebSocket (WSS) clients";
  license = lib.licenses.mit;
  broken = false;
}
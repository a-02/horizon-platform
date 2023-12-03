{ mkDerivation, base, bytestring, crypton-connection, exceptions
, lib, network, websockets
}:
mkDerivation {
  pname = "wuss";
  version = "2.0.1.5";
  sha256 = "c20e41cfe73d38db8331a7edd7c3b2f51e47ad11c8e5de0d257379589d00b4b3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring crypton-connection exceptions network websockets
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Secure WebSocket (WSS) clients";
  license = lib.licenses.mit;
  broken = false;
}
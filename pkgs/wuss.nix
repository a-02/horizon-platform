{ mkDerivation, base, bytestring, connection, exceptions, lib
, network, websockets
}:
mkDerivation {
  pname = "wuss";
  version = "2.0.1.3";
  sha256 = "67501f9d44cfc6804494952772d03eaf0c1baea6f827179df8b5dc5c49d7ed0c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring connection exceptions network websockets
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
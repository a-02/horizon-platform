{ mkDerivation, base, bytestring, cryptonite, data-default-class
, lib, network, recv, streaming-commons, tls, tls-session-manager
, unliftio, wai, warp
}:
mkDerivation {
  pname = "warp-tls";
  version = "3.3.6";
  sha256 = "ae8070500bfb81b256630b0f792451b26265b9eb1f2ba6d1696cf9ed96965bb5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cryptonite data-default-class network recv
    streaming-commons tls tls-session-manager unliftio wai warp
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/yesodweb/wai";
  description = "HTTP over TLS support for Warp via the TLS package";
  license = lib.licenses.mit;
  broken = false;
}
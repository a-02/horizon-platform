{ mkDerivation, base, bytestring, data-default-class, lib, network
, recv, streaming-commons, tls, tls-session-manager, unliftio, wai
, warp
}:
mkDerivation {
  pname = "warp-tls";
  version = "3.4.3";
  sha256 = "4d82c2f8b63428d7dca252d912ae42e58330b9a39979890fdd218b7e5a638dba";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring data-default-class network recv streaming-commons
    tls tls-session-manager unliftio wai warp
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
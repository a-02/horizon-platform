{ mkDerivation, base, lib, network, network-bsd, network-uri }:
mkDerivation {
  pname = "httpd-shed";
  version = "0.4.1.1";
  sha256 = "590fcfcb401923652bfcaf8c9a81b3bbbe83a4b1d16f7ccfecf7e47f6b6cafa5";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base network network-bsd network-uri ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A simple web-server with an interact style API";
  license = lib.licenses.bsd3;
  broken = false;
}
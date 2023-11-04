{ mkDerivation, base, lib }:
mkDerivation {
  pname = "network-info";
  version = "0.2.1";
  sha256 = "9b2d88312fc8280351d5003200cc07decbb865f85d3aa7b1094b238bd6a8b404";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/jacobstanley/network-info";
  description = "Access the local computer's basic network configuration";
  license = lib.licenses.bsd3;
  broken = false;
}
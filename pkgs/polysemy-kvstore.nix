{ mkDerivation, base, containers, lib, polysemy }:
mkDerivation {
  pname = "polysemy-kvstore";
  version = "0.1.3.0";
  sha256 = "8d88fddae6477be9e36cb34d4cdbf226cc548207ef761b83a3513feb780ccbf0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers polysemy ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "KVStore effect for polysemy";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation, base, containers, contravariant, lib }:
mkDerivation {
  pname = "lrucache";
  version = "1.2.0.1";
  sha256 = "fc1ab2375eeaae181d838095354d3ef77d4072815006a285dd39a165a5855b85";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers contravariant ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/chowells79/lrucache";
  description = "a simple, pure LRU cache";
  license = lib.licenses.bsd3;
  broken = false;
}
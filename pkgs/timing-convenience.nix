{ mkDerivation, base, lib, time }:
mkDerivation {
  pname = "timing-convenience";
  version = "0.1";
  sha256 = "72200ea2c942bfb4ac4c5ae53222353ac3af0c40058f4a9179c99df5ff33171d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base time ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Convenient functions for getting times";
  license = lib.licenses.bsd3;
  broken = false;
}
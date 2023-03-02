{ mkDerivation, base, lib }:
mkDerivation {
  pname = "sort";
  version = "1.0.0.0";
  sha256 = "cee3894879cb4b2150331eca96d5d27f51a6114bcb082d1d8dded55881f5770d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/cdornan/sort";
  description = "A Haskell sorting toolkit";
  license = lib.licenses.bsd3;
  broken = false;
}

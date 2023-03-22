{ mkDerivation, QuickCheck, base, genvalidity, hspec, lib
, pretty-show, validity
}:
mkDerivation {
  pname = "genvalidity-property";
  version = "1.0.0.0";
  sha256 = "9c5e385ac5dd5b554d8ff07422261248178bcee8f226b2c7ca93cd4c006eacdb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base genvalidity hspec pretty-show QuickCheck validity
  ];
  testHaskellDepends = [ base genvalidity hspec QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "Standard properties for functions on `Validity` types";
  license = lib.licenses.mit;
  broken = false;
}
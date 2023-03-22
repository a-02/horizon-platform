{ mkDerivation, QuickCheck, array, base, criterion, genvalidity
, genvalidity-criterion, genvalidity-hspec, hspec, lib, random
, text, validity, validity-text
}:
mkDerivation {
  pname = "genvalidity-text";
  version = "1.0.0.1";
  sha256 = "96e19453e45d76cb89794801588a6d9726c5092fef5cd053e7abe4322f553be3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base genvalidity QuickCheck random text validity
    validity-text
  ];
  testHaskellDepends = [
    base genvalidity genvalidity-hspec hspec QuickCheck text
  ];
  benchmarkHaskellDepends = [
    base criterion genvalidity genvalidity-criterion QuickCheck text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "GenValidity support for Text";
  license = lib.licenses.mit;
  broken = false;
}
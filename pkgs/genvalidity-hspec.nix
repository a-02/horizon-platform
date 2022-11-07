{ mkDerivation
, base
, genvalidity
, genvalidity-property
, hspec
, hspec-core
, lib
, QuickCheck
, transformers
, validity
}:
mkDerivation {
  pname = "genvalidity-hspec";
  version = "1.0.0.2";
  sha256 = "84f9a27f7345616162e80081b867961734fc750acdbac40e64c5db4d7f055b03";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    genvalidity
    genvalidity-property
    hspec
    hspec-core
    QuickCheck
    transformers
    validity
  ];
  testHaskellDepends = [
    base
    genvalidity
    hspec
    hspec-core
    QuickCheck
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "Standard spec's for GenValidity instances";
  license = lib.licenses.mit;
  broken = false;
}

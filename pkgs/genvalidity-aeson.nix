{ mkDerivation, QuickCheck, aeson, base, criterion, deepseq
, genvalidity, genvalidity-criterion, genvalidity-hspec
, genvalidity-scientific, genvalidity-text
, genvalidity-unordered-containers, genvalidity-vector, hspec, lib
, validity, validity-aeson
}:
mkDerivation {
  pname = "genvalidity-aeson";
  version = "1.0.0.1";
  sha256 = "6101f09c02b925209673d6aed691e64e60a127f41aff1750b27dc7e18caeba48";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base genvalidity genvalidity-scientific genvalidity-text
    genvalidity-unordered-containers genvalidity-vector QuickCheck
    validity validity-aeson
  ];
  testHaskellDepends = [
    aeson base deepseq genvalidity genvalidity-hspec hspec
  ];
  benchmarkHaskellDepends = [
    aeson base criterion genvalidity-criterion
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "GenValidity support for aeson";
  license = lib.licenses.mit;
  broken = false;
}
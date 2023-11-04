{ mkDerivation, QuickCheck, base, criterion, genvalidity
, genvalidity-criterion, genvalidity-hspec, hspec, lib, time
, validity-time
}:
mkDerivation {
  pname = "genvalidity-time";
  version = "1.0.0.1";
  sha256 = "867c5a77aa2750e6b574f63b5bc23e037d8e0e393d627df49df46497d9346c94";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base genvalidity QuickCheck time validity-time
  ];
  testHaskellDepends = [ base genvalidity-hspec hspec time ];
  benchmarkHaskellDepends = [
    base criterion genvalidity-criterion time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "GenValidity support for time";
  license = lib.licenses.mit;
  broken = false;
}
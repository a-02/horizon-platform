{ mkDerivation, QuickCheck, base, criterion, genvalidity
, genvalidity-criterion, genvalidity-hspec, hspec, lib, uuid
, validity, validity-uuid
}:
mkDerivation {
  pname = "genvalidity-uuid";
  version = "1.0.0.1";
  sha256 = "b3348b59221f8c39ce5e6e5b4e390216304dae6c43bee9339424efd5f075d696";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base genvalidity QuickCheck uuid validity validity-uuid
  ];
  testHaskellDepends = [
    base genvalidity genvalidity-hspec hspec QuickCheck uuid
  ];
  benchmarkHaskellDepends = [
    base criterion genvalidity genvalidity-criterion QuickCheck uuid
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "GenValidity support for UUID";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation, QuickCheck, base, case-insensitive, criterion
, genvalidity, genvalidity-criterion, genvalidity-hspec, hspec, lib
, validity-case-insensitive
}:
mkDerivation {
  pname = "genvalidity-case-insensitive";
  version = "0.0.0.1";
  sha256 = "40e26a8a2f53ae592f87d85bcffce28a1c8af2ffdb977ac88d5ed7df99970aa9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base case-insensitive genvalidity validity-case-insensitive
  ];
  testHaskellDepends = [
    base case-insensitive genvalidity-hspec hspec
  ];
  benchmarkHaskellDepends = [
    base case-insensitive criterion genvalidity genvalidity-criterion
    QuickCheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "GenValidity support for case-insensitive";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation, QuickCheck, base, containers, criterion, fuzzy-time
, genvalidity, genvalidity-criterion, genvalidity-hspec
, genvalidity-text, genvalidity-time, hspec, lib, megaparsec, text
, time
}:
mkDerivation {
  pname = "fuzzy-time-gen";
  version = "0.2.0.1";
  sha256 = "24819f2e7ea8c2d890ac58bf0760f4f5db2aa77da10bb162a8ed4131284a1280";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers fuzzy-time genvalidity genvalidity-time megaparsec
    QuickCheck time
  ];
  testHaskellDepends = [
    base fuzzy-time genvalidity genvalidity-hspec genvalidity-text
    genvalidity-time hspec megaparsec QuickCheck text time
  ];
  benchmarkHaskellDepends = [
    base criterion fuzzy-time genvalidity-criterion
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/fuzzy-time";
  license = lib.licenses.mit;
  broken = false;
}
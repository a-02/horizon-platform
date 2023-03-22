{ mkDerivation, QuickCheck, base, criterion, genvalidity
, genvalidity-criterion, genvalidity-hspec, hspec, lib, path
, validity-path
}:
mkDerivation {
  pname = "genvalidity-path";
  version = "1.0.0.1";
  sha256 = "3fb4081a0f578a5cf00564bab49013784f8b4395ef2c4e005960772475924ee5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base genvalidity path QuickCheck validity-path
  ];
  testHaskellDepends = [ base genvalidity-hspec hspec path ];
  benchmarkHaskellDepends = [
    base criterion genvalidity genvalidity-criterion path QuickCheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "GenValidity support for Path";
  license = lib.licenses.mit;
  broken = false;
}
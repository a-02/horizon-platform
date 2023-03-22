{ mkDerivation, HUnit, base, deepseq, hspec, hspec-expectations
, lib
}:
mkDerivation {
  pname = "should-not-typecheck";
  version = "2.1.0";
  sha256 = "f538ac70ce07679bc2e6c1651db82a86866664ab995665fdc78e6cb12bd8d591";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq HUnit ];
  testHaskellDepends = [
    base deepseq hspec hspec-expectations HUnit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/CRogers/should-not-typecheck";
  description = "A HUnit/hspec assertion library to verify that an expression does not typecheck";
  license = lib.licenses.bsd3;
  broken = false;
}
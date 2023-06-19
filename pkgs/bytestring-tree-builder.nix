{ mkDerivation, QuickCheck, base, base-prelude, bytestring
, criterion, deepseq, lib, quickcheck-instances, tasty, tasty-hunit
, tasty-quickcheck, text
}:
mkDerivation {
  pname = "bytestring-tree-builder";
  version = "0.2.7.10";
  sha256 = "29282a224cd60c5c15a21deca658eb764325512ee96be8bc27638764aebd363d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring text ];
  testHaskellDepends = [
    base-prelude bytestring QuickCheck quickcheck-instances tasty
    tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base-prelude bytestring criterion deepseq
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/bytestring-tree-builder";
  description = "A very efficient ByteString builder implementation based on the binary tree";
  license = lib.licenses.mit;
  broken = false;
}
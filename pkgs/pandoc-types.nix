{ mkDerivation, HUnit, QuickCheck, aeson, base, bytestring
, containers, criterion, deepseq, ghc-prim, lib, syb
, template-haskell, test-framework, test-framework-hunit
, test-framework-quickcheck2, text, transformers
}:
mkDerivation {
  pname = "pandoc-types";
  version = "1.23.1";
  sha256 = "ad0fa083d28d452b7d37a1c67a2c140137a5f29a2f52fd88e807fac20245a1c1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers deepseq ghc-prim QuickCheck syb
    text transformers
  ];
  testHaskellDepends = [
    aeson base bytestring containers HUnit QuickCheck syb
    template-haskell test-framework test-framework-hunit
    test-framework-quickcheck2 text
  ];
  benchmarkHaskellDepends = [ base criterion text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://pandoc.org/";
  description = "Types for representing a structured document";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, HUnit, QuickCheck, base, base-orphans, deepseq
, doctest, lib, primitive, random, tasty, tasty-bench, tasty-hunit
, tasty-inspection-testing, tasty-quickcheck, template-haskell
, transformers, vector-stream
}:
mkDerivation {
  pname = "vector";
  version = "0.13.0.0";
  sha256 = "c5d3167d15e12f52e00879ddf304a591672a74e369cc47bc5c7fa1d5a8d15b4f";
  revision = "3";
  editedCabalFile = "0k14l1r84gxjv385crq8f1kvdcr4kjwyi4k7f64g6nksl60sqp7s";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq primitive vector-stream ];
  testHaskellDepends = [
    base base-orphans doctest HUnit primitive QuickCheck random tasty
    tasty-hunit tasty-inspection-testing tasty-quickcheck
    template-haskell transformers
  ];
  benchmarkHaskellDepends = [ base random tasty tasty-bench ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/vector";
  description = "Efficient Arrays";
  license = lib.licenses.bsd3;
  broken = false;
}
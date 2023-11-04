{ mkDerivation, HUnit, QuickCheck, base, ghc-prim, hashable, lib
, mwc-random, primitive, test-framework, test-framework-hunit
, test-framework-quickcheck2, vector
}:
mkDerivation {
  pname = "hashtables";
  version = "1.3.1";
  sha256 = "6f3d40eb22ab87279b9a0bf51c22307706b240c90a664c82bfae2392268c59c3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base ghc-prim hashable primitive vector
  ];
  testHaskellDepends = [
    base ghc-prim hashable HUnit mwc-random primitive QuickCheck
    test-framework test-framework-hunit test-framework-quickcheck2
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/gregorycollins/hashtables";
  description = "Mutable hash tables in the ST monad";
  license = lib.licenses.bsd3;
  broken = false;
}
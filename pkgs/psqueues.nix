{ mkDerivation, HUnit, PSQueue, QuickCheck, array, base, containers
, criterion, deepseq, fingertree-psqueue, ghc-prim, hashable, lib
, mtl, random, tagged, tasty, tasty-hunit, tasty-quickcheck
, unordered-containers
}:
mkDerivation {
  pname = "psqueues";
  version = "0.2.7.3";
  sha256 = "d09750ba3578d905b54d0b3a60a7b468910a60b3165e5de98bf6f4efae3ebfb2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq ghc-prim hashable ];
  testHaskellDepends = [
    array base deepseq ghc-prim hashable HUnit QuickCheck tagged tasty
    tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base containers criterion deepseq fingertree-psqueue ghc-prim
    hashable mtl PSQueue random unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Pure priority search queues";
  license = lib.licenses.bsd3;
  broken = false;
}
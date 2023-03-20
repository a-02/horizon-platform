{ mkDerivation, HUnit, QuickCheck, abstract-deque, abstract-par
, array, base, containers, deepseq, fetchgit, lib, monad-par-extras
, mtl, mwc-random, parallel, test-framework, test-framework-hunit
, test-framework-quickcheck2, test-framework-th, time
}:
mkDerivation {
  pname = "monad-par";
  version = "0.3.5";
  src = fetchgit {
    url = "https://github.com/locallycompact/monad-par";
    sha256 = "0907kpzgvmv98pbn8pvbgccwkgx3fv5lypjlr3xlqp6ghy0yprym";
    rev = "4f5b44fc85095e08cc159e4fc54a7d78dc41eccf";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/monad-par/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    abstract-deque abstract-par array base containers deepseq
    monad-par-extras mtl mwc-random parallel
  ];
  testHaskellDepends = [
    abstract-deque abstract-par array base containers deepseq HUnit
    monad-par-extras mtl mwc-random QuickCheck test-framework
    test-framework-hunit test-framework-quickcheck2 test-framework-th
    time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/simonmar/monad-par";
  description = "A library for parallel programming based on a monad";
  license = lib.licenses.bsd3;
  broken = false;
}
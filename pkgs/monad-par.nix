{ mkDerivation
, HUnit
, QuickCheck
, abstract-deque
, abstract-par
, array
, base
, containers
, deepseq
, lib
, monad-par-extras
, mtl
, mwc-random
, parallel
, test-framework
, test-framework-hunit
, test-framework-quickcheck2
, test-framework-th
, time
}:
mkDerivation {
  pname = "monad-par";
  version = "0.3.5";
  sha256 = "823ad5666cbcaefe2c6e0ff131daa0713dff9b3b534fb809643b869e5e4a15a9";
  revision = "2";
  editedCabalFile = "1q4npp0vrsjpxk7n7rcf3lgqg1sf2qx628ciiw48al9y9xlznsaz";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    abstract-deque
    abstract-par
    array
    base
    containers
    deepseq
    monad-par-extras
    mtl
    mwc-random
    parallel
  ];
  testHaskellDepends = [
    abstract-deque
    abstract-par
    array
    base
    containers
    deepseq
    HUnit
    monad-par-extras
    mtl
    mwc-random
    QuickCheck
    test-framework
    test-framework-hunit
    test-framework-quickcheck2
    test-framework-th
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

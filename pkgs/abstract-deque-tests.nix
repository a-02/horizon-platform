{ mkDerivation, HUnit, abstract-deque, array, base, containers, lib
, random, test-framework, test-framework-hunit, time
}:
mkDerivation {
  pname = "abstract-deque-tests";
  version = "0.3";
  sha256 = "5f17fb4cc26559f81c777f494622907e8927181175eaa172fb6adbf14b2feba5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    abstract-deque array base containers HUnit random test-framework
    test-framework-hunit time
  ];
  testHaskellDepends = [
    abstract-deque array base containers HUnit random test-framework
    test-framework-hunit time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
  description = "A test-suite for any queue or double-ended queue satisfying an interface";
  license = lib.licenses.bsd3;
  broken = false;
}
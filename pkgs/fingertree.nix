{ mkDerivation, HUnit, QuickCheck, base, lib, test-framework
, test-framework-hunit, test-framework-quickcheck2
}:
mkDerivation {
  pname = "fingertree";
  version = "0.1.5.0";
  sha256 = "f3263c92fa8b18f1e1a64cd12480c8c1bee2c1fa0584ab3345f3dd8522bdbf71";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [
    base HUnit QuickCheck test-framework test-framework-hunit
    test-framework-quickcheck2
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Generic finger-tree structure, with example instances";
  license = lib.licenses.bsd3;
  broken = false;
}
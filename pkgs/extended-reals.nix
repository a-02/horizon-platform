{ mkDerivation, HUnit, QuickCheck, base, deepseq, hashable, lib
, tasty, tasty-hunit, tasty-quickcheck, tasty-th
}:
mkDerivation {
  pname = "extended-reals";
  version = "0.2.4.0";
  sha256 = "0c2c664abe60a105207b1678ab699c1b5cf2708976bc6b2b8c3a4e54e93faea5";
  revision = "2";
  editedCabalFile = "1v4vcrf66bapldw5jswkp4jb1v1qlr5cx2mgjnxb8mszir7s6p1f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq hashable ];
  testHaskellDepends = [
    base deepseq HUnit QuickCheck tasty tasty-hunit tasty-quickcheck
    tasty-th
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/msakai/extended-reals/";
  description = "Extension of real numbers with positive/negative infinities";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, QuickCheck, base, deepseq, hspec, lib
, math-functions, primitive, vector, vector-algorithms
, vector-binary-instances, vector-th-unbox
}:
mkDerivation {
  pname = "dense-linear-algebra";
  version = "0.1.0.0";
  sha256 = "f7777a7931b40332ebbc716f64abb63697cbab0128e5c1228d47760c5597f2d4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base deepseq math-functions primitive vector vector-algorithms
    vector-binary-instances vector-th-unbox
  ];
  testHaskellDepends = [ base hspec QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Simple and incomplete pure haskell implementation of linear algebra";
  license = lib.licenses.bsd2;
  broken = false;
}
{ mkDerivation, QuickCheck, aeson, async, base, binary
, data-default-class, deepseq, dense-linear-algebra, erf, ieee754
, lib, math-functions, mwc-random, parallel, primitive, random
, tasty, tasty-expected-failure, tasty-hunit, tasty-quickcheck
, vector, vector-algorithms, vector-binary-instances
, vector-th-unbox
}:
mkDerivation {
  pname = "statistics";
  version = "0.16.2.1";
  sha256 = "a7c0c068a0d1f784d865163748a40fbbdda48febe3b905063a22ce7a32e05ce4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson async base binary data-default-class deepseq
    dense-linear-algebra math-functions mwc-random parallel primitive
    random vector vector-algorithms vector-binary-instances
    vector-th-unbox
  ];
  testHaskellDepends = [
    aeson base binary dense-linear-algebra erf ieee754 math-functions
    primitive QuickCheck tasty tasty-expected-failure tasty-hunit
    tasty-quickcheck vector vector-algorithms
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/statistics";
  description = "A library of statistical types, data, and functions";
  license = lib.licenses.bsd2;
  broken = false;
}
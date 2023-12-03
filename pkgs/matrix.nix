{ mkDerivation, QuickCheck, base, criterion, deepseq, lib, loop
, primitive, semigroups, tasty, tasty-quickcheck, vector
}:
mkDerivation {
  pname = "matrix";
  version = "0.3.6.3";
  sha256 = "0c8317398bdeae95fec515a7b6ccc957563dfed97e9dd1c5391333226d42f03f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base deepseq loop primitive semigroups vector
  ];
  testHaskellDepends = [ base QuickCheck tasty tasty-quickcheck ];
  benchmarkHaskellDepends = [ base criterion ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A native implementation of matrix operations";
  license = lib.licenses.mit;
  broken = false;
}
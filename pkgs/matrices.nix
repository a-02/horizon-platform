{ mkDerivation, base, criterion, deepseq, lib, primitive, tasty
, tasty-hunit, tasty-quickcheck, vector
}:
mkDerivation {
  pname = "matrices";
  version = "0.5.0";
  sha256 = "fd013f0b061f7fd006242340fb6bc936114c8fc7d255ba58bd54cd1d66391d4d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq primitive vector ];
  testHaskellDepends = [
    base tasty tasty-hunit tasty-quickcheck vector
  ];
  benchmarkHaskellDepends = [ base criterion vector ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "native matrix based on vector";
  license = lib.licenses.bsd3;
  broken = false;
}
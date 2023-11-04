{ mkDerivation, base, deepseq, ghc-prim, lib, mwc-random, primitive
, vector, vector-algorithms
}:
mkDerivation {
  pname = "data-sketches-core";
  version = "0.1.0.0";
  sha256 = "2355740a772914b9c1d45c2fd28a790da1c0301867643b08c42e86fdee45dc39";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base deepseq ghc-prim mwc-random primitive vector vector-algorithms
  ];
  testHaskellDepends = [
    base deepseq ghc-prim mwc-random primitive vector vector-algorithms
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/iand675/datasketches-haskell#readme";
  license = lib.licenses.bsd3;
  broken = false;
}
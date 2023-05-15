{ mkDerivation, QuickCheck, adjunctions, base, base-compat, boring
, criterion, deepseq, distributive, fin, hashable
, indexed-traversable, inspection-testing, lib, semigroupoids
, tagged, transformers, vector
}:
mkDerivation {
  pname = "vec";
  version = "0.5";
  sha256 = "0a2403f857ba10ff6f159b4ded0930d0d3cf046bef29de1d5929f9e51356209f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    adjunctions base boring deepseq distributive fin hashable
    indexed-traversable QuickCheck semigroupoids transformers
  ];
  testHaskellDepends = [
    base base-compat fin inspection-testing tagged
  ];
  benchmarkHaskellDepends = [ base criterion fin vector ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/vec";
  description = "Vec: length-indexed (sized) list";
  license = lib.licenses.bsd3;
  broken = false;
}
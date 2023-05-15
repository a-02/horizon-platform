{ mkDerivation, base, base-compat, binary, deepseq
, foldable1-classes-compat, lib, reducers, semigroups, tasty
, tasty-quickcheck, transformers, vector, vector-algorithms
}:
mkDerivation {
  pname = "tdigest";
  version = "0.3";
  sha256 = "6ba5e689297f22e45e8b240a27397285cbf76c65b631f58c5d48f579048a4d0a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base-compat binary deepseq foldable1-classes-compat reducers
    transformers vector vector-algorithms
  ];
  testHaskellDepends = [
    base base-compat binary deepseq semigroups tasty tasty-quickcheck
    vector vector-algorithms
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/haskell-tdigest#readme";
  description = "On-line accumulation of rank-based statistics";
  license = lib.licenses.bsd3;
  broken = false;
}
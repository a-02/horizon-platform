{ mkDerivation, HUnit, base, containers, ghc-prim, hspec, lib, mtl
, ordered-containers, syb, template-haskell, th-abstraction
, th-orphans, transformers-compat
}:
mkDerivation {
  pname = "th-desugar";
  version = "1.16";
  sha256 = "4ecb87e0d361278c40a62410cdb5580029ecd630cfd2c619ce41812518868210";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers ghc-prim mtl ordered-containers syb
    template-haskell th-abstraction th-orphans transformers-compat
  ];
  testHaskellDepends = [
    base containers ghc-prim hspec HUnit mtl syb template-haskell
    th-abstraction th-orphans
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/goldfirere/th-desugar";
  description = "Functions to desugar Template Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, HUnit, base, containers, ghc-prim, hspec, lib, mtl
, ordered-containers, syb, template-haskell, th-abstraction
, th-orphans, transformers-compat
}:
mkDerivation {
  pname = "th-desugar";
  version = "1.15";
  sha256 = "179e2cddabb1af642d08e304fa24f4910ad42aae10095961a47d0c916e5ffe98";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers ghc-prim mtl ordered-containers syb
    template-haskell th-abstraction th-orphans transformers-compat
  ];
  testHaskellDepends = [
    base containers hspec HUnit mtl syb template-haskell th-abstraction
    th-orphans
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
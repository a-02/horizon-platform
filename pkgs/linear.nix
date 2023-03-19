{ mkDerivation, HUnit, adjunctions, base, base-orphans, binary
, bytes, bytestring, cereal, containers, deepseq, distributive
, ghc-prim, hashable, indexed-traversable, lens, lib, random
, reflection, semigroupoids, simple-reflect, tagged
, template-haskell, test-framework, test-framework-hunit
, transformers, transformers-compat, unordered-containers, vector
, void
}:
mkDerivation {
  pname = "linear";
  version = "1.22";
  sha256 = "cfe43e392d0e9b2fd5647bde962b0678681de580260ad30e5f29ae490a03b9b5";
  revision = "1";
  editedCabalFile = "1p94bq3pwqvj4qd1lp0w84k514xd9vib76gw0d16q1xh27c2sz4h";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    adjunctions base base-orphans binary bytes cereal containers
    deepseq distributive ghc-prim hashable indexed-traversable lens
    random reflection semigroupoids tagged template-haskell
    transformers transformers-compat unordered-containers vector void
  ];
  testHaskellDepends = [
    base binary bytestring deepseq HUnit reflection simple-reflect
    test-framework test-framework-hunit vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/linear/";
  description = "Linear Algebra";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, HUnit, QuickCheck, array, assoc, base, base-compat
, base-orphans, bifunctors, bytestring, call-stack, comonad
, containers, contravariant, criterion, deepseq, distributive
, exceptions, filepath, free, generic-deriving, ghc-prim, hashable
, indexed-traversable, indexed-traversable-instances
, kan-extensions, lib, mtl, parallel, profunctors, reflection
, semigroupoids, simple-reflect, strict, tagged, template-haskell
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text, th-abstraction, these, transformers, transformers-compat
, unordered-containers, vector
}:
mkDerivation {
  pname = "lens";
  version = "5.2.2";
  sha256 = "855c58c51935bd86e61c5886862fb36cb2dc4c63240d96d93c538e8f54ff76e3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array assoc base base-orphans bifunctors bytestring call-stack
    comonad containers contravariant distributive exceptions filepath
    free ghc-prim hashable indexed-traversable
    indexed-traversable-instances kan-extensions mtl parallel
    profunctors reflection semigroupoids strict tagged template-haskell
    text th-abstraction these transformers transformers-compat
    unordered-containers vector
  ];
  testHaskellDepends = [
    base bytestring containers deepseq HUnit mtl QuickCheck
    simple-reflect test-framework test-framework-hunit
    test-framework-quickcheck2 text transformers
  ];
  benchmarkHaskellDepends = [
    base base-compat bytestring comonad containers criterion deepseq
    generic-deriving transformers unordered-containers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/lens/";
  description = "Lenses, Folds and Traversals";
  license = lib.licenses.bsd2;
  broken = false;
}
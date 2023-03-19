{ mkDerivation, QuickCheck, StateVar, array, base, bifunctors
, comonad, containers, contravariant, ghc-prim, hspec
, hspec-discover, lib, profunctors, stm, tagged, template-haskell
, th-abstraction, transformers, transformers-compat
, unordered-containers
}:
mkDerivation {
  pname = "invariant";
  version = "0.6.1";
  sha256 = "fb7294ade6554e9c6e77020f065f3acb63f78e62019e4830ea509c36c8b0d4f0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bifunctors comonad containers contravariant ghc-prim
    profunctors StateVar stm tagged template-haskell th-abstraction
    transformers transformers-compat unordered-containers
  ];
  testHaskellDepends = [ base hspec QuickCheck template-haskell ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nfrisby/invariant-functors";
  description = "Haskell98 invariant functors";
  license = lib.licenses.bsd2;
  broken = false;
}
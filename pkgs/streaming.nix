{ mkDerivation, QuickCheck, base, containers, ghc-prim, hspec, lib
, mmorph, mtl, transformers, transformers-base
}:
mkDerivation {
  pname = "streaming";
  version = "0.2.4.0";
  sha256 = "caddfba744a057174f94b3c2e6bce2d31f6bb7c436df0c0920269336f132dde0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers ghc-prim mmorph mtl transformers transformers-base
  ];
  testHaskellDepends = [ base hspec QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-streaming/streaming";
  description = "an elementary streaming prelude and general stream type";
  license = lib.licenses.bsd3;
  broken = false;
}
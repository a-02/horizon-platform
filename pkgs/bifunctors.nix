{ mkDerivation, QuickCheck, assoc, base, comonad, containers
, foldable1-classes-compat, hspec, hspec-discover, lib, tagged
, template-haskell, th-abstraction, transformers
, transformers-compat
}:
mkDerivation {
  pname = "bifunctors";
  version = "5.6.1";
  sha256 = "06381471b5be16516a1b2c4b21a5101a3d991038bface8e0cad144c0044d57fc";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    assoc base comonad containers foldable1-classes-compat tagged
    template-haskell th-abstraction transformers
  ];
  testHaskellDepends = [
    base hspec QuickCheck template-haskell transformers
    transformers-compat
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/bifunctors/";
  description = "Bifunctors";
  license = lib.licenses.bsd3;
  broken = false;
}
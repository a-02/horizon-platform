{ mkDerivation, base, gauge, hspec, hspec-discover, lib, semigroups
}:
mkDerivation {
  pname = "newtype-generics";
  version = "0.6.2";
  sha256 = "a1ac6052020a09f1bc5000a141d2edd4b31a82f95ce5957b7eedad40c065a74e";
  revision = "1";
  editedCabalFile = "0xgc7sxs1p3qibgwbikjdrhn47j7m4gk5x1wrv9hncks6hd6hsyf";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base hspec ];
  testToolDepends = [ hspec-discover ];
  benchmarkHaskellDepends = [ base gauge semigroups ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/sjakobi/newtype-generics";
  description = "A typeclass and set of functions for working with newtypes";
  license = lib.licenses.bsd3;
  broken = false;
}
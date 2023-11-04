{ mkDerivation, base, gauge, hspec, hspec-discover, lib, semigroups
}:
mkDerivation {
  pname = "newtype-generics";
  version = "0.6.2";
  sha256 = "a1ac6052020a09f1bc5000a141d2edd4b31a82f95ce5957b7eedad40c065a74e";
  revision = "2";
  editedCabalFile = "1sys4nr905q5wxxyq0bv4mvaagm2qdx42q5v2316l60s4ivz7jw1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base hspec ];
  testToolDepends = [ hspec-discover ];
  benchmarkHaskellDepends = [ base gauge semigroups ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/sjakobi/newtype-generics";
  description = "A typeclass and set of functions for working with newtypes";
  license = lib.licenses.bsd3;
  broken = false;
}
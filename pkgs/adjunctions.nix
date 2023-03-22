{ mkDerivation, array, base, comonad, containers, contravariant
, distributive, free, generic-deriving, hspec, hspec-discover, lib
, mtl, profunctors, semigroupoids, semigroups, tagged, transformers
, transformers-compat, void
}:
mkDerivation {
  pname = "adjunctions";
  version = "4.4.2";
  sha256 = "147b5f8db810bca0ea8952ef974982ffc447cecd21f01e1ea1121df77e276518";
  revision = "1";
  editedCabalFile = "0ii8818fr1h3wpyaqwa44gn1kv7lafbw9b4qdj7r86w5k5q00ypp";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base comonad containers contravariant distributive free mtl
    profunctors semigroupoids semigroups tagged transformers
    transformers-compat void
  ];
  testHaskellDepends = [ base distributive generic-deriving hspec ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/adjunctions/";
  description = "Adjunctions and representable functors";
  license = lib.licenses.bsd3;
  broken = false;
}
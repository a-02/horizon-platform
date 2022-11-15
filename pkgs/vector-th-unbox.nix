{ mkDerivation
, base
, data-default
, lib
, template-haskell
, vector
}:
mkDerivation {
  pname = "vector-th-unbox";
  version = "0.2.2";
  sha256 = "8aa4ca464e842706e5b5234b8242d1aafec9ee755659b0e3ff44ecde13a80149";
  revision = "3";
  editedCabalFile = "0ki133sixq8pkfys36nl25jzdvnw40qq2bnskdmk2zyjhckdjcna";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base template-haskell vector ];
  testHaskellDepends = [ base data-default vector ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/tsurucapital/vector-th-unbox";
  description = "Deriver for Data.Vector.Unboxed using Template Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}

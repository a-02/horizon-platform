{ mkDerivation, QuickCheck, base, base-compat, containers, deepseq
, directory, filepath, hspec, hspec-discover, lib
, optparse-applicative, parsec, text, tree-diff
}:
mkDerivation {
  pname = "haddock-library";
  version = "1.11.0";
  sha256 = "7c075ec9a378b0a2d9d605e72135201e6c7ff316564f2c974113582f43bea20a";
  revision = "1";
  editedCabalFile = "0mqwr0vbpj9zw7f1p5kdd7hsr76gs1ijmh8h9hak47nphffi1fxv";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers parsec text ];
  testHaskellDepends = [
    base base-compat containers deepseq directory filepath hspec
    optparse-applicative parsec QuickCheck text tree-diff
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/haddock/";
  description = "Library exposing some functionality of Haddock";
  license = lib.licenses.bsd2;
  broken = false;
}
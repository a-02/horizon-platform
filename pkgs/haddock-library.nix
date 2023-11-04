{ mkDerivation, QuickCheck, base, base-compat, containers, deepseq
, directory, filepath, hspec, hspec-discover, lib
, optparse-applicative, parsec, text, tree-diff
}:
mkDerivation {
  pname = "haddock-library";
  version = "1.11.0";
  sha256 = "7c075ec9a378b0a2d9d605e72135201e6c7ff316564f2c974113582f43bea20a";
  revision = "3";
  editedCabalFile = "09qdpidav1pbvnch04j00dwn5jw4zigz5v37rwfhp9aabwl51bqp";
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/haddock/";
  description = "Library exposing some functionality of Haddock";
  license = lib.licenses.bsd2;
  broken = false;
}
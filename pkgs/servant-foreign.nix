{ mkDerivation, base, base-compat, fetchgit, hspec, hspec-discover
, http-types, lens, lib, servant, text
}:
mkDerivation {
  pname = "servant-foreign";
  version = "0.15.4";
  src = fetchgit {
    url = "https://github.com/haskell-servant/servant";
    sha256 = "0ay4q9jy3xkn5j1k91snfdndi6j91hlri9h79m429j0d8v5vnj7i";
    rev = "0cda2d0ac87dc0dd47744134e44ab0b1647fe09a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/servant-foreign/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base-compat http-types lens servant text
  ];
  testHaskellDepends = [ base hspec servant ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://docs.servant.dev/";
  description = "Helpers for generating clients for servant APIs in any programming language";
  license = lib.licenses.bsd3;
  broken = false;
}
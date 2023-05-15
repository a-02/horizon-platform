{ mkDerivation, base, base-compat, fetchgit, hspec, hspec-discover
, http-types, lens, lib, servant, text
}:
mkDerivation {
  pname = "servant-foreign";
  version = "0.15.4";
  src = fetchgit {
    url = "https://github.com/haskell-servant/servant";
    sha256 = "0ck3l8nj42nan8abdzvkl4ynb2l9nhnsq2zjl24d7sgca860fi57";
    rev = "7ae787371333556a7b84778631ed91d1d73e8370";
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
{ mkDerivation, base, base-compat, fetchgit, hspec, hspec-discover
, http-types, lens, lib, servant, text
}:
mkDerivation {
  pname = "servant-foreign";
  version = "0.15.4";
  src = fetchgit {
    url = "https://github.com/TeofilC/servant";
    sha256 = "0f6vkm44p93ln63plk4vfavadcgxjiqr8xncxrjqzp2mcql6qdmh";
    rev = "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc";
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
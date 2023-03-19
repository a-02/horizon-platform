{ mkDerivation, QuickCheck, aeson, base, base-compat
, base64-bytestring, bytestring, constraints, containers, deepseq
, exceptions, fetchgit, free, hspec, hspec-discover, http-media
, http-types, lib, network-uri, safe, servant, sop-core
, template-haskell, text, transformers
}:
mkDerivation {
  pname = "servant-client-core";
  version = "0.19";
  src = fetchgit {
    url = "https://github.com/TeofilC/servant";
    sha256 = "0f6vkm44p93ln63plk4vfavadcgxjiqr8xncxrjqzp2mcql6qdmh";
    rev = "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/servant-client-core/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base-compat base64-bytestring bytestring constraints
    containers deepseq exceptions free http-media http-types
    network-uri safe servant sop-core template-haskell text
    transformers
  ];
  testHaskellDepends = [ base base-compat deepseq hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://docs.servant.dev/";
  description = "Core functionality and class for client function generation for servant APIs";
  license = lib.licenses.bsd3;
  broken = false;
}
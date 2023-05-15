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
    url = "https://github.com/haskell-servant/servant";
    sha256 = "0ck3l8nj42nan8abdzvkl4ynb2l9nhnsq2zjl24d7sgca860fi57";
    rev = "7ae787371333556a7b84778631ed91d1d73e8370";
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
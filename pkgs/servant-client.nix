{ mkDerivation, HUnit, QuickCheck, aeson, base, base-compat
, bytestring, containers, deepseq, entropy, exceptions, fetchgit
, hspec, hspec-discover, http-api-data, http-client, http-media
, http-types, kan-extensions, lib, markdown-unlit, monad-control
, mtl, network, semigroupoids, servant, servant-client-core
, servant-server, sop-core, stm, tdigest, text, time, transformers
, transformers-base, transformers-compat, wai, warp
}:
mkDerivation {
  pname = "servant-client";
  version = "0.19";
  src = fetchgit {
    url = "https://github.com/TeofilC/servant";
    sha256 = "0f6vkm44p93ln63plk4vfavadcgxjiqr8xncxrjqzp2mcql6qdmh";
    rev = "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/servant-client/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base-compat bytestring containers deepseq exceptions
    http-client http-media http-types kan-extensions monad-control mtl
    semigroupoids servant servant-client-core stm text time
    transformers transformers-base transformers-compat
  ];
  testHaskellDepends = [
    aeson base base-compat bytestring entropy hspec http-api-data
    http-client http-types HUnit kan-extensions markdown-unlit mtl
    network QuickCheck servant servant-client-core servant-server
    sop-core stm tdigest text transformers transformers-compat wai warp
  ];
  testToolDepends = [ hspec-discover markdown-unlit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://docs.servant.dev/";
  description = "Automatic derivation of querying functions for servant";
  license = lib.licenses.bsd3;
  broken = false;
}
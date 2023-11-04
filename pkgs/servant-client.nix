{ mkDerivation, HUnit, QuickCheck, aeson, base, base-compat
, bytestring, containers, deepseq, entropy, exceptions, hspec
, hspec-discover, http-api-data, http-client, http-media
, http-types, kan-extensions, lib, markdown-unlit, monad-control
, mtl, network, semigroupoids, servant, servant-client-core
, servant-server, sop-core, stm, text, time, transformers
, transformers-base, transformers-compat, wai, warp
}:
mkDerivation {
  pname = "servant-client";
  version = "0.20";
  sha256 = "765d30f3579b74bebfe79f59a4aacfd9dec0c02c7d355f389caa604f0ac3b276";
  revision = "1";
  editedCabalFile = "1bvj0rnnyqw3h70b94k9j21np5h0acxn4cla2gsv9zclhd99f4q6";
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
    sop-core stm text transformers transformers-compat wai warp
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
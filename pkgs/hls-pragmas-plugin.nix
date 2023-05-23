{ mkDerivation, base, containers, extra, filepath, fuzzy, ghc
, ghcide, hls-plugin-api, hls-test-utils, lens, lib, lsp, lsp-types
, text, transformers, unordered-containers
}:
mkDerivation {
  pname = "hls-pragmas-plugin";
  version = "1.0.4.0";
  sha256 = "a5457b9465e697d0f5087b134992c5eec3637c762bbc99c1691bafef09a865b3";
  revision = "2";
  editedCabalFile = "1gvbwi5ph49lwv231zg2crixshf5mds4ch83sps332pvaq7lnj62";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers extra fuzzy ghc ghcide hls-plugin-api lens lsp text
    transformers unordered-containers
  ];
  testHaskellDepends = [
    base filepath hls-test-utils lens lsp-types text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Pragmas plugin for Haskell Language Server";
  license = lib.licenses.asl20;
  broken = false;
}
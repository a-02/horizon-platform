{ mkDerivation
, aeson
, base
, bytestring
, containers
, deepseq
, extra
, filepath
, ghcide
, hashable
, hls-plugin-api
, hls-test-utils
, lens
, lib
, lsp
, lsp-test
, mtl
, semigroupoids
, tasty-hunit
, text
, transformers
, vector
}:
mkDerivation {
  pname = "hls-code-range-plugin";
  version = "1.1.0.0";
  sha256 = "198cc8308967cbb1b3616316da42ac12f6469a071f753c8a5086cc7754c3f1e3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    containers
    deepseq
    extra
    ghcide
    hashable
    hls-plugin-api
    lens
    lsp
    mtl
    semigroupoids
    text
    transformers
    vector
  ];
  testHaskellDepends = [
    base
    bytestring
    containers
    filepath
    ghcide
    hls-test-utils
    lens
    lsp
    lsp-test
    tasty-hunit
    text
    transformers
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "HLS Plugin to support smart selection range and Folding range";
  license = lib.licenses.asl20;
  broken = false;
}

{ mkDerivation
, aeson
, base
, containers
, extra
, filepath
, ghc
, ghc-boot-th
, ghc-exactprint
, ghcide
, hls-plugin-api
, hls-refactor-plugin
, hls-test-utils
, lens
, lib
, lsp
, lsp-test
, mtl
, text
, transformers
, unordered-containers
}:
mkDerivation {
  pname = "hls-gadt-plugin";
  version = "1.0.1.0";
  sha256 = "9a54c545b8a8881f2775b51136c403bf05277802cbc7571960bf38db7d744682";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    containers
    extra
    ghc
    ghc-boot-th
    ghc-exactprint
    ghcide
    hls-plugin-api
    hls-refactor-plugin
    lens
    lsp
    mtl
    text
    transformers
    unordered-containers
  ];
  testHaskellDepends = [
    base
    filepath
    hls-test-utils
    lens
    lsp
    lsp-test
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Convert to GADT syntax plugin";
  license = lib.licenses.asl20;
  broken = false;
}

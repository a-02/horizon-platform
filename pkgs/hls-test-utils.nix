{ mkDerivation
, aeson
, async
, base
, blaze-markup
, bytestring
, containers
, data-default
, directory
, extra
, filepath
, ghcide
, hls-graph
, hls-plugin-api
, lens
, lib
, lsp
, lsp-test
, lsp-types
, tasty
, tasty-expected-failure
, tasty-golden
, tasty-hunit
, tasty-rerun
, temporary
, text
, unordered-containers
}:
mkDerivation {
  pname = "hls-test-utils";
  version = "1.5.0.0";
  sha256 = "e3d94e0d441f126c377f4830cc61edc1518684c5862962678be4a65554075e0c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    async
    base
    blaze-markup
    bytestring
    containers
    data-default
    directory
    extra
    filepath
    ghcide
    hls-graph
    hls-plugin-api
    lens
    lsp
    lsp-test
    lsp-types
    tasty
    tasty-expected-failure
    tasty-golden
    tasty-hunit
    tasty-rerun
    temporary
    text
    unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/haskell-language-server#readme";
  description = "Utilities used in the tests of Haskell Language Server";
  license = lib.licenses.asl20;
  broken = false;
}
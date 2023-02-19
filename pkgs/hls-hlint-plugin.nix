{ mkDerivation
, Diff
, aeson
, apply-refact
, base
, binary
, bytestring
, containers
, data-default
, deepseq
, directory
, extra
, filepath
, ghc-exactprint
, ghc-lib-parser
, ghc-lib-parser-ex
, ghcide
, hashable
, hlint
, hls-plugin-api
, hls-test-utils
, hslogger
, lens
, lib
, lsp
, lsp-types
, refact
, regex-tdfa
, stm
, temporary
, text
, transformers
, unordered-containers
}:
mkDerivation {
  pname = "hls-hlint-plugin";
  version = "1.1.1.0";
  sha256 = "9dda168ebdc68e366636e4730f1d3342134a8e628164254636be7bc1439b2083";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    apply-refact
    base
    binary
    bytestring
    containers
    data-default
    deepseq
    Diff
    directory
    extra
    filepath
    ghc-exactprint
    ghc-lib-parser
    ghc-lib-parser-ex
    ghcide
    hashable
    hlint
    hls-plugin-api
    hslogger
    lens
    lsp
    refact
    regex-tdfa
    stm
    temporary
    text
    transformers
    unordered-containers
  ];
  testHaskellDepends = [
    aeson
    base
    containers
    filepath
    hls-plugin-api
    hls-test-utils
    lens
    lsp-types
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Hlint integration plugin with Haskell Language Server";
  license = lib.licenses.asl20;
  broken = false;
}

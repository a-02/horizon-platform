{ mkDerivation, Diff, aeson, apply-refact, base, binary, bytestring
, containers, data-default, deepseq, directory, extra, filepath
, ghc-exactprint, ghc-lib-parser, ghc-lib-parser-ex, ghcide
, hashable, hlint, hls-plugin-api, hls-test-utils, lens, lib, lsp
, lsp-types, mtl, refact, regex-tdfa, row-types, stm, temporary
, text, transformers, unordered-containers
}:
mkDerivation {
  pname = "hls-hlint-plugin";
  version = "2.4.0.0";
  sha256 = "b36f4ff71a741b5d503496f771c42c097d378c05316a0fc6edd22a537595ce8c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson apply-refact base binary bytestring containers data-default
    deepseq Diff directory extra filepath ghc-exactprint ghc-lib-parser
    ghc-lib-parser-ex ghcide hashable hlint hls-plugin-api lens lsp mtl
    refact regex-tdfa stm temporary text transformers
    unordered-containers
  ];
  testHaskellDepends = [
    aeson base containers filepath hls-plugin-api hls-test-utils lens
    lsp-types row-types text
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
{ mkDerivation, Diff, aeson, apply-refact, base, binary, bytestring
, containers, data-default, deepseq, directory, extra, filepath
, ghc-exactprint, ghc-lib-parser, ghc-lib-parser-ex, ghcide
, hashable, hlint, hls-plugin-api, hls-test-utils, lens, lib, lsp
, lsp-types, refact, regex-tdfa, stm, temporary, text, transformers
, unordered-containers
}:
mkDerivation {
  pname = "hls-hlint-plugin";
  version = "2.0.0.1";
  sha256 = "605ec799dd3a99783a9be19f2188b110098e923784c22a0edeaee0adbac82c5b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson apply-refact base binary bytestring containers data-default
    deepseq Diff directory extra filepath ghc-exactprint ghc-lib-parser
    ghc-lib-parser-ex ghcide hashable hlint hls-plugin-api lens lsp
    refact regex-tdfa stm temporary text transformers
    unordered-containers
  ];
  testHaskellDepends = [
    aeson base containers filepath hls-plugin-api hls-test-utils lens
    lsp-types text
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
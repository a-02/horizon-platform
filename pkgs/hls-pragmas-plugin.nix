{ mkDerivation, base, containers, extra, filepath, fuzzy, ghc
, ghcide, hls-plugin-api, hls-test-utils, lens, lib, lsp, lsp-types
, text, transformers, unordered-containers
}:
mkDerivation {
  pname = "hls-pragmas-plugin";
  version = "2.0.0.1";
  sha256 = "a482f14a787dec6bd5873ffefe8d2aa876265d64c4621404226393ff0d39f8d5";
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
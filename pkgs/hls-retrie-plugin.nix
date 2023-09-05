{ mkDerivation, aeson, base, bytestring, containers, deepseq
, directory, extra, filepath, ghc, ghcide, hashable, hls-plugin-api
, hls-refactor-plugin, hls-test-utils, lib, lsp, lsp-types, retrie
, safe-exceptions, stm, text, transformers, unordered-containers
}:
mkDerivation {
  pname = "hls-retrie-plugin";
  version = "2.0.0.1";
  sha256 = "c8cd3d861da0f829cda5ac52ab01a3a84f0023a3a2729aa60c1d5d9f914d0467";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers deepseq directory extra ghc ghcide
    hashable hls-plugin-api hls-refactor-plugin lsp lsp-types retrie
    safe-exceptions stm text transformers unordered-containers
  ];
  testHaskellDepends = [
    aeson base containers filepath hls-plugin-api hls-refactor-plugin
    hls-test-utils text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Retrie integration plugin for Haskell Language Server";
  license = lib.licenses.asl20;
  broken = false;
}
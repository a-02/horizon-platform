{ mkDerivation, base, containers, deepseq, extra, filepath, ghc
, ghcide, hashable, hls-plugin-api, hls-test-utils, lib, lsp, text
, transformers
}:
mkDerivation {
  pname = "hls-explicit-fixity-plugin";
  version = "2.0.0.1";
  sha256 = "b59e154bfbc54cea238456524a12ac1b72041f779a4c21845244f35f1e8235d7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers deepseq extra ghc ghcide hashable hls-plugin-api
    lsp text transformers
  ];
  testHaskellDepends = [ base filepath hls-test-utils text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Show fixity explicitly while hovering";
  license = lib.licenses.asl20;
  broken = false;
}
{ mkDerivation, aeson, base, containers, directory, filepath
, ghcide, hls-plugin-api, hls-test-utils, lib, lsp, text
, transformers, unordered-containers
}:
mkDerivation {
  pname = "hls-module-name-plugin";
  version = "2.4.0.0";
  sha256 = "793e507aed297852234a9e9a0e9b731a2cdb752e046e6b155c13c267cb03b206";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base containers directory filepath ghcide hls-plugin-api lsp
    text transformers unordered-containers
  ];
  testHaskellDepends = [ base filepath hls-test-utils ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Module name plugin for Haskell Language Server";
  license = lib.licenses.asl20;
  broken = false;
}
{ mkDerivation, aeson, base, directory, filepath, ghcide
, hls-plugin-api, hls-test-utils, lib, lsp, text, transformers
, unordered-containers
}:
mkDerivation {
  pname = "hls-module-name-plugin";
  version = "1.1.1.0";
  sha256 = "821b5fe4d44077a07b898db2188bcfefb919316004612a666c3f783e677ee01a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base directory filepath ghcide hls-plugin-api lsp text
    transformers unordered-containers
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
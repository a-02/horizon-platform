{ mkDerivation, base, directory, filepath, ghcide, hls-plugin-api
, hls-test-utils, lens, lib, lsp-types, process, text, transformers
}:
mkDerivation {
  pname = "hls-cabal-fmt-plugin";
  version = "0.1.0.0";
  sha256 = "b71ae62ebe3dd35a19f6571fd3c8f17654c80c4b36607e39347516677606defe";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base directory filepath ghcide hls-plugin-api lens lsp-types
    process text transformers
  ];
  testHaskellDepends = [ base directory filepath hls-test-utils ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Integration with the cabal-fmt code formatter";
  license = lib.licenses.asl20;
  broken = false;
}
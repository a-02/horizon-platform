{ mkDerivation, base, containers, deepseq, extra, filepath, ghc
, ghcide, hashable, hls-plugin-api, hls-test-utils, lib, lsp, text
, transformers
}:
mkDerivation {
  pname = "hls-explicit-fixity-plugin";
  version = "2.4.0.0";
  sha256 = "5ec08b247db79896d80c240f56f807e7ee443c5ef53ae4635e201154bd26a06d";
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
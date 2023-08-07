{ mkDerivation, aeson, base, containers, deepseq, dlist, filepath
, ghc, ghcide, hls-graph, hls-plugin-api, hls-test-utils, lib, lsp
, text, transformers, unordered-containers
}:
mkDerivation {
  pname = "hls-qualify-imported-names-plugin";
  version = "2.0.0.1";
  sha256 = "d31cb2b35831bde36fb06e98940f03005e2ee93a32d4ce1d1aaf38b0c2c84365";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base containers deepseq dlist ghc ghcide hls-graph
    hls-plugin-api lsp text transformers unordered-containers
  ];
  testHaskellDepends = [ base filepath hls-test-utils text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A Haskell Language Server plugin that qualifies imported names";
  license = lib.licenses.asl20;
  broken = false;
}
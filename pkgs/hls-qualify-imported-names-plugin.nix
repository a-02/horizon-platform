{ mkDerivation, aeson, base, containers, deepseq, dlist, filepath
, ghc, ghcide, hls-graph, hls-plugin-api, hls-test-utils, lib, lsp
, text, transformers, unordered-containers
}:
mkDerivation {
  pname = "hls-qualify-imported-names-plugin";
  version = "1.0.2.0";
  sha256 = "6eacd92615fb2699f5c5eb1269c4a38e8e34be732f616a8cc0af273a571a582c";
  revision = "2";
  editedCabalFile = "1nka50z7d8b4b2rnk1qsfzfjbwmi7zn4ifsh435wfgkg0z3kmhzv";
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
{ mkDerivation, base, containers, deepseq, extra, filepath, ghc
, ghcide, hashable, hls-plugin-api, hls-test-utils, lib, lsp, text
, transformers
}:
mkDerivation {
  pname = "hls-explicit-fixity-plugin";
  version = "1.1.0.0";
  sha256 = "5c73b0ff6c77e38c8ad5b310b4eb6359f3f0c0bfa42212c63d95d9ebdc544a27";
  revision = "2";
  editedCabalFile = "1zllz3yfkiyyyyy1kqmgd2sjcc7zb3k8slzpxnpwxn5n662y5qws";
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
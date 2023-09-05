{ mkDerivation, aeson, base, containers, extra, filepath, ghcide
, ghcide-test-utils, hiedb, hls-plugin-api, hls-test-utils, lens
, lib, lsp, lsp-test, sqlite-simple, text, unordered-containers
}:
mkDerivation {
  pname = "hls-call-hierarchy-plugin";
  version = "2.0.0.1";
  sha256 = "2c4c9da2a234de1534a6f594792ed6244303c4ff3326e32eb4ebcc2437af83ad";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base containers extra ghcide hiedb hls-plugin-api lens lsp
    sqlite-simple text unordered-containers
  ];
  testHaskellDepends = [
    aeson base containers extra filepath ghcide-test-utils
    hls-test-utils lens lsp lsp-test text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Call hierarchy plugin for Haskell Language Server";
  license = lib.licenses.asl20;
  broken = false;
}
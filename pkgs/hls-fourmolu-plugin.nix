{ mkDerivation, aeson, base, containers, filepath, fourmolu, ghc
, ghc-boot-th, ghcide, hls-plugin-api, hls-test-utils, lens, lib
, lsp, lsp-test, process-extras, text
}:
mkDerivation {
  pname = "hls-fourmolu-plugin";
  version = "1.1.1.0";
  sha256 = "4f121a85ea4edbbbee9d9e426ed6c9f8b349eb189e1d8edf06f5c9a971e8babf";
  revision = "3";
  editedCabalFile = "014bvikivg6p60wfdw8cb8agq4bangdld1d2n5778nl7abpjgszf";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base filepath fourmolu ghc ghc-boot-th ghcide hls-plugin-api lens
    lsp process-extras text
  ];
  testHaskellDepends = [
    aeson base containers filepath hls-plugin-api hls-test-utils
    lsp-test
  ];
  testToolDepends = [ fourmolu ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/haskell-language-server";
  description = "Integration with the Fourmolu code formatter";
  license = lib.licenses.asl20;
  broken = false;
}
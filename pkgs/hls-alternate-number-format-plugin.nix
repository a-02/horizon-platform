{ mkDerivation, QuickCheck, aeson, base, containers, extra
, filepath, ghc-boot-th, ghcide, hie-compat, hls-graph
, hls-plugin-api, hls-test-utils, lens, lib, lsp, mtl, regex-tdfa
, syb, tasty-quickcheck, text, unordered-containers
}:
mkDerivation {
  pname = "hls-alternate-number-format-plugin";
  version = "1.3.0.0";
  sha256 = "7202b7115bb5696f604f0392012cbf6a1ed1ed1ec88ef3564c2083da34378152";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base containers extra ghc-boot-th ghcide hie-compat hls-graph
    hls-plugin-api lens lsp mtl regex-tdfa syb text
    unordered-containers
  ];
  testHaskellDepends = [
    base filepath hls-test-utils lsp QuickCheck regex-tdfa
    tasty-quickcheck text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Provide Alternate Number Formats plugin for Haskell Language Server";
  license = lib.licenses.asl20;
  broken = false;
}
{ mkDerivation, QuickCheck, base, containers, filepath, ghcide
, hls-plugin-api, hls-test-utils, lib, lsp, lsp-types, regex-tdfa
, syb, text, transformers, unordered-containers
}:
mkDerivation {
  pname = "hls-change-type-signature-plugin";
  version = "2.4.0.0";
  sha256 = "28706cc57dfcb41ec797518819dbdeb92881ff1efa7b088b301a7e4fe732e9c3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers ghcide hls-plugin-api lsp-types regex-tdfa syb text
    transformers unordered-containers
  ];
  testHaskellDepends = [
    base filepath hls-test-utils lsp QuickCheck regex-tdfa text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Change a declarations type signature with a Code Action";
  license = lib.licenses.asl20;
  broken = false;
}
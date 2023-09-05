{ mkDerivation, QuickCheck, base, filepath, ghcide, hls-plugin-api
, hls-test-utils, lib, lsp, lsp-types, regex-tdfa, syb, text
, transformers, unordered-containers
}:
mkDerivation {
  pname = "hls-change-type-signature-plugin";
  version = "2.0.0.1";
  sha256 = "a54e477a302e3775af1dc7a64fd1055a4fee5271842f9a2cad2323aae59c4cd6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base ghcide hls-plugin-api lsp-types regex-tdfa syb text
    transformers unordered-containers
  ];
  testHaskellDepends = [
    base filepath hls-test-utils lsp QuickCheck regex-tdfa text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Change a declarations type signature with a Code Action";
  license = lib.licenses.asl20;
  broken = false;
}
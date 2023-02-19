{ mkDerivation
, QuickCheck
, base
, filepath
, ghcide
, hls-plugin-api
, hls-test-utils
, lib
, lsp
, lsp-types
, regex-tdfa
, syb
, text
, transformers
, unordered-containers
}:
mkDerivation {
  pname = "hls-change-type-signature-plugin";
  version = "1.1.0.0";
  sha256 = "35983c08a19f2070ac04e6801b261ca87b50254af3c4ed40c0b10e65a02eb8d8";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    ghcide
    hls-plugin-api
    lsp-types
    regex-tdfa
    syb
    text
    transformers
    unordered-containers
  ];
  testHaskellDepends = [
    base
    filepath
    hls-test-utils
    lsp
    QuickCheck
    regex-tdfa
    text
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

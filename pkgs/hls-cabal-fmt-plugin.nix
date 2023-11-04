{ mkDerivation, base, directory, filepath, ghcide, hls-plugin-api
, hls-test-utils, lens, lib, lsp-types, mtl, process-extras, text
, transformers
}:
mkDerivation {
  pname = "hls-cabal-fmt-plugin";
  version = "2.4.0.0";
  sha256 = "79630cd9fdf28b8aa49acbdb4389489a4f99137b87f6ef4ce44be013cd9263bf";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base directory filepath ghcide hls-plugin-api lens lsp-types mtl
    process-extras text transformers
  ];
  testHaskellDepends = [ base directory filepath hls-test-utils ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Integration with the cabal-fmt code formatter";
  license = lib.licenses.asl20;
  broken = false;
}
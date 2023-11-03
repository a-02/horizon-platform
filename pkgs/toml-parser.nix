{ mkDerivation, alex, array, base, containers, happy, hspec
, hspec-discover, lib, markdown-unlit, prettyprinter
, template-haskell, text, time, transformers
}:
mkDerivation {
  pname = "toml-parser";
  version = "1.3.0.0";
  sha256 = "fcd6a27a4ede2367b4b2d3ffa0cce722cb78adc6647774dbeef8d248bf825b98";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base containers prettyprinter text time transformers
  ];
  libraryToolDepends = [ alex happy ];
  testHaskellDepends = [
    base containers hspec template-haskell time
  ];
  testToolDepends = [ hspec-discover markdown-unlit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "TOML 1.0.0 parser";
  license = lib.licenses.isc;
  broken = false;
}
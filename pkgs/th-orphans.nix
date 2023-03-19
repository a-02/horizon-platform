{ mkDerivation, base, bytestring, ghc-prim, hspec, hspec-discover
, lib, mtl, template-haskell, th-compat, th-lift, th-reify-many
}:
mkDerivation {
  pname = "th-orphans";
  version = "0.13.14";
  sha256 = "9ddb2a1a0f6afeb8b6697256bfa5930f1f75e99624e370931c4b48bd16c3077c";
  revision = "1";
  editedCabalFile = "1lb3gi32gzy6ml8jxzyj6jp9gglgg2737aqc128gqz4g7wvbnasy";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base mtl template-haskell th-compat th-lift th-reify-many
  ];
  testHaskellDepends = [
    base bytestring ghc-prim hspec template-haskell th-lift
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Orphan instances for TH datatypes";
  license = lib.licenses.bsd3;
  broken = false;
}
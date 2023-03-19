{ mkDerivation, base, containers, ghc-prim, hspec, hspec-discover
, lib, template-haskell, th-abstraction
}:
mkDerivation {
  pname = "generic-deriving";
  version = "1.14.3";
  sha256 = "9e4fa5082b36685db2e79f34ebc835c30ba9032a9b04673e21089742d28fbc40";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers ghc-prim template-haskell th-abstraction
  ];
  testHaskellDepends = [ base hspec template-haskell ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/dreixel/generic-deriving";
  description = "Generic programming library for generalised deriving";
  license = lib.licenses.bsd3;
  broken = false;
}
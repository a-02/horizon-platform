{ mkDerivation, QuickCheck, base, containers, hspec, hspec-discover
, lib, template-haskell
}:
mkDerivation {
  pname = "reflection";
  version = "2.1.7";
  sha256 = "6cbb18a8b02871533bb8b641dc6f76813a097d94404e5808bb5d52b0f0e415fd";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base template-haskell ];
  testHaskellDepends = [ base containers hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/reflection";
  description = "Reifies arbitrary terms into types that can be reflected back into terms";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, QuickCheck, array, base, distributive, ghc-prim
, lib
}:
mkDerivation {
  pname = "intervals";
  version = "0.9.2";
  sha256 = "9b421de662873e65e90380b9c5a0c7497afa581b3e0e65530f8653a4fddb2be2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ array base distributive ghc-prim ];
  testHaskellDepends = [ base QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/intervals";
  description = "Interval Arithmetic";
  license = lib.licenses.bsd3;
  broken = false;
}
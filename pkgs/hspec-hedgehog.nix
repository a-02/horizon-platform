{ mkDerivation, QuickCheck, base, hedgehog, hspec, hspec-core, lib
, splitmix
}:
mkDerivation {
  pname = "hspec-hedgehog";
  version = "0.1.1.0";
  sha256 = "e6275bf607e3a132cf2ca3e1fd5f2c15c27741b02c138553cdddfee2cddb33c2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base hedgehog hspec hspec-core QuickCheck splitmix
  ];
  testHaskellDepends = [ base hedgehog hspec ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/parsonsmatt/hspec-hedgehog#readme";
  description = "Integrate Hedgehog and Hspec!";
  license = lib.licenses.bsd3;
  broken = false;
}
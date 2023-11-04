{ mkDerivation, HUnit, QuickCheck, base, call-stack, hspec
, hspec-core, hspec-discover, lib
}:
mkDerivation {
  pname = "hspec-contrib";
  version = "0.5.2";
  sha256 = "60898e870dce67c7b206015c7d77d7e5ae4c9d256d0c1f1c8f201de8f7ef0200";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base call-stack hspec-core HUnit ];
  testHaskellDepends = [
    base call-stack hspec hspec-core HUnit QuickCheck
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hspec.github.io/";
  description = "Contributed functionality for Hspec";
  license = lib.licenses.mit;
  broken = false;
}
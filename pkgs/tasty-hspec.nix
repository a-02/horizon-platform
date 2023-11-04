{ mkDerivation, QuickCheck, base, hspec, hspec-api, hspec-core, lib
, tasty, tasty-quickcheck, tasty-smallcheck
}:
mkDerivation {
  pname = "tasty-hspec";
  version = "1.2.0.4";
  sha256 = "d1a273cbe653c23422c14e99672f7cd64e07f85bb019f95fef095db8e5b461c2";
  revision = "2";
  editedCabalFile = "17q4xwj2glc8d482r33kq472yhkx7nai987x80nw3ilmp942bxzd";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base hspec hspec-api hspec-core QuickCheck tasty tasty-quickcheck
    tasty-smallcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mitchellwrosen/tasty-hspec";
  description = "Hspec support for the Tasty test framework";
  license = lib.licenses.bsd3;
  broken = false;
}
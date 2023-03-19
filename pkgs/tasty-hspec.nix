{ mkDerivation, QuickCheck, base, hspec, hspec-core, lib, tasty
, tasty-quickcheck, tasty-smallcheck
}:
mkDerivation {
  pname = "tasty-hspec";
  version = "1.2.0.3";
  sha256 = "9d5d6febcf5f723ecee79a088d13f8550297aead959ca6e52d5b03a598de0d94";
  revision = "1";
  editedCabalFile = "01sc5gmij3280b63jpjcz0a2lq045dj5ay46yq9i896cyka6gs6r";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base hspec hspec-core QuickCheck tasty tasty-quickcheck
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
{ mkDerivation, base, ghc, inspection-testing, lib, tasty
, template-haskell
}:
mkDerivation {
  pname = "tasty-inspection-testing";
  version = "0.2";
  sha256 = "1f8fa87b808b660c1390406c134758ae269afe9bf0682394e88ebf42ca5bbcbd";
  revision = "1";
  editedCabalFile = "1539r8zxbpwf1ia48syslq2j5v6l8czigp4fjwfwdcsf8x5k9j6g";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base ghc inspection-testing tasty template-haskell
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Bodigrim/tasty-inspection-testing";
  description = "Inspection testing support for tasty";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation
, async
, base
, bytestring
, filepath
, lib
, singleton-bool
, tasty
, tasty-expected-failure
, tasty-hunit
, temporary
}:
mkDerivation {
  pname = "lukko";
  version = "0.1.1.3";
  sha256 = "a80efb60cfa3dae18682c01980d76d5f7e413e191cd186992e1bf7388d48ab1f";
  revision = "3";
  editedCabalFile = "1a6spmbiv3ias40sjrnsxfgr1d5mwg039a2q7113zb7i9n6c1m7g";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [
    async
    base
    bytestring
    filepath
    singleton-bool
    tasty
    tasty-expected-failure
    tasty-hunit
    temporary
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "File locking";
  license = "GPL-2.0-or-later AND BSD-3-Clause";
  broken = false;
}

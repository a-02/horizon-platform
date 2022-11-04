{ mkDerivation
, base
, bytestring
, http-types
, HUnit
, lib
, tasty
, wai
, wai-extra
}:
mkDerivation {
  pname = "tasty-wai";
  version = "0.1.2.0";
  sha256 = "6f6f224d6dee893ce550f512832389a9ae0e490917a99b5362c9a4f73f16dca3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    http-types
    HUnit
    tasty
    wai
    wai-extra
  ];
  testHaskellDepends = [ base http-types tasty wai ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Test 'wai' endpoints via Test.Tasty";
  license = lib.licenses.bsd3;
  broken = false;
}

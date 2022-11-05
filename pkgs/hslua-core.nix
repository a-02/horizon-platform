{ mkDerivation
, base
, bytestring
, exceptions
, lib
, lua
, lua-arbitrary
, mtl
, QuickCheck
, quickcheck-instances
, tasty
, tasty-hunit
, tasty-quickcheck
, text
}:
mkDerivation {
  pname = "hslua-core";
  version = "2.2.1";
  sha256 = "78e5e12130fe9ae195e576ed5a391f82f2665b39d377a881640b9064f351c343";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    exceptions
    lua
    mtl
    text
  ];
  testHaskellDepends = [
    base
    bytestring
    exceptions
    lua
    lua-arbitrary
    mtl
    QuickCheck
    quickcheck-instances
    tasty
    tasty-hunit
    tasty-quickcheck
    text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hslua.org/";
  description = "Bindings to Lua, an embeddable scripting language";
  license = lib.licenses.mit;
  broken = false;
}

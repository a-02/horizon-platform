{ mkDerivation, QuickCheck, base, bytestring, exceptions, lib, lua
, lua-arbitrary, mtl, quickcheck-instances, tasty, tasty-hunit
, tasty-quickcheck, text
}:
mkDerivation {
  pname = "hslua-core";
  version = "2.3.1";
  sha256 = "1eb218dd9b8791fc113f44c71d42010fa9d5786c2164c35a8b15917c5120afa5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring exceptions lua mtl text
  ];
  testHaskellDepends = [
    base bytestring exceptions lua lua-arbitrary mtl QuickCheck
    quickcheck-instances tasty tasty-hunit tasty-quickcheck text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hslua.org/";
  description = "Bindings to Lua, an embeddable scripting language";
  license = lib.licenses.mit;
  broken = false;
}
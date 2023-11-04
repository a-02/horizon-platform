{ mkDerivation, QuickCheck, aeson, base, bytestring, containers
, exceptions, hslua, hslua-list, hslua-marshalling, lib, lua
, pandoc-types, safe, tasty, tasty-hunit, tasty-lua
, tasty-quickcheck, text
}:
mkDerivation {
  pname = "pandoc-lua-marshal";
  version = "0.2.2";
  sha256 = "22231c24a7b228b3d0b99dcfb77657b410f8a95f02b6bde365b434a8f1882679";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers exceptions hslua hslua-list
    hslua-marshalling lua pandoc-types safe text
  ];
  testHaskellDepends = [
    aeson base bytestring containers exceptions hslua hslua-list
    hslua-marshalling lua pandoc-types QuickCheck safe tasty
    tasty-hunit tasty-lua tasty-quickcheck text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/pandoc/pandoc-lua-marshal";
  description = "Use pandoc types in Lua";
  license = lib.licenses.mit;
  broken = false;
}
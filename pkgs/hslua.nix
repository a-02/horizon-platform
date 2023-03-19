{ mkDerivation, QuickCheck, base, bytestring, containers
, exceptions, hslua-aeson, hslua-classes, hslua-core
, hslua-marshalling, hslua-objectorientation, hslua-packaging
, hslua-typing, lib, lua, lua-arbitrary, mtl, quickcheck-instances
, tasty, tasty-hslua, tasty-hunit, text
}:
mkDerivation {
  pname = "hslua";
  version = "2.3.0";
  sha256 = "4fc16b45f012c991717407bf17b50e8240467b76e1f404933addb96df19087b3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers exceptions hslua-aeson hslua-classes
    hslua-core hslua-marshalling hslua-objectorientation
    hslua-packaging hslua-typing mtl text
  ];
  testHaskellDepends = [
    base bytestring containers exceptions hslua-aeson hslua-classes
    hslua-core hslua-marshalling hslua-objectorientation
    hslua-packaging hslua-typing lua lua-arbitrary mtl QuickCheck
    quickcheck-instances tasty tasty-hslua tasty-hunit text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
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
{ mkDerivation, QuickCheck, base, bytestring, containers
, exceptions, hslua-core, hslua-marshalling, hslua-typing, lib
, lua-arbitrary, mtl, quickcheck-instances, tasty, tasty-hslua
, tasty-hunit, tasty-quickcheck, text
}:
mkDerivation {
  pname = "hslua-objectorientation";
  version = "2.3.0";
  sha256 = "4fb51a892d872f0c80f01dcbcdc4fed97602479c631fa67fb90dc04f1900e61d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers exceptions hslua-core hslua-marshalling
    hslua-typing mtl text
  ];
  testHaskellDepends = [
    base bytestring containers exceptions hslua-core hslua-marshalling
    hslua-typing lua-arbitrary mtl QuickCheck quickcheck-instances
    tasty tasty-hslua tasty-hunit tasty-quickcheck text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hslua.org/";
  description = "Object orientation tools for HsLua";
  license = lib.licenses.mit;
  broken = false;
}
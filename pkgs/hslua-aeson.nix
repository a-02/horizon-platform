{ mkDerivation, QuickCheck, aeson, base, bytestring, containers
, hashable, hslua-core, hslua-marshalling, lib, mtl
, quickcheck-instances, scientific, tasty, tasty-hunit
, tasty-quickcheck, text, unordered-containers, vector
}:
mkDerivation {
  pname = "hslua-aeson";
  version = "2.3.0.1";
  sha256 = "838adb847538b9fc1d8d61df5cc6fad20564f8098a101a8c8bc167a38fffd5ba";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers hashable hslua-core
    hslua-marshalling mtl scientific text unordered-containers vector
  ];
  testHaskellDepends = [
    aeson base bytestring containers hashable hslua-core
    hslua-marshalling mtl QuickCheck quickcheck-instances scientific
    tasty tasty-hunit tasty-quickcheck text unordered-containers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hslua.org/";
  description = "Allow aeson data types to be used with Lua";
  license = lib.licenses.mit;
  broken = false;
}
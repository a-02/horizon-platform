{ mkDerivation, QuickCheck, base, lib, mtl, tasty, tasty-hunit
, tasty-quickcheck, unix
}:
mkDerivation {
  pname = "unix-memory";
  version = "0.1.2";
  sha256 = "f766b55f5a356ab4a7289d456972555b2f6a4af0cc46968f0d308c96c63f1ae5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [
    base mtl QuickCheck tasty tasty-hunit tasty-quickcheck unix
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/vincenthz/hs-unix-memory";
  description = "Unix memory syscalls";
  license = lib.licenses.bsd3;
  broken = false;
}
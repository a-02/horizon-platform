{ mkDerivation, QuickCheck, array, base, containers, lib, mtl
, random, syb
}:
mkDerivation {
  pname = "ChasingBottoms";
  version = "1.3.1.12";
  sha256 = "a018538c0196390c7ebb5c677ff5b81bd760d75ae2b21bae8ab8a47b00f6c9ef";
  revision = "1";
  editedCabalFile = "0ra041bg2m04niqzi0y468cfmv2bkjh8ckix2i8xf2shw7v2zn4r";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers mtl QuickCheck random syb
  ];
  testHaskellDepends = [
    array base containers mtl QuickCheck random syb
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "For testing partial and infinite values";
  license = lib.licenses.mit;
  broken = false;
}
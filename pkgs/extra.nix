{ mkDerivation, QuickCheck, base, clock, directory, filepath, lib
, process, quickcheck-instances, time, unix
}:
mkDerivation {
  pname = "extra";
  version = "1.7.13";
  sha256 = "bdeac5b0316ce4649faae02f7b79cef2bf59a7ddae6dc1c0e3d6c0667a5c7b67";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base clock directory filepath process time unix
  ];
  testHaskellDepends = [
    base directory filepath QuickCheck quickcheck-instances unix
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/ndmitchell/extra#readme";
  description = "Extra functions I use";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, QuickCheck, base, bytestring, lib, tasty
, tasty-quickcheck, zlib
}:
mkDerivation {
  pname = "zlib";
  version = "0.6.3.0";
  sha256 = "9eaa989ad4534438b5beb51c1d3a4c8f6a088fdff0b259a5394fbf39aaee04da";
  revision = "1";
  editedCabalFile = "1z2dyphqmjb9akzqrqh8k82mfv416hqj82nz8mysidx09jgf7p4s";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ];
  librarySystemDepends = [ zlib ];
  testHaskellDepends = [
    base bytestring QuickCheck tasty tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Compression and decompression in the gzip and zlib formats";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, base, criterion, lib, tasty, tasty-quickcheck }:
mkDerivation {
  pname = "clock";
  version = "0.8.3";
  sha256 = "845ce5db4c98cefd517323e005f87effceff886987305e421c4ef616dc0505d1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base tasty tasty-quickcheck ];
  benchmarkHaskellDepends = [ base criterion ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/corsis/clock";
  description = "High-resolution clock functions: monotonic, realtime, cputime";
  license = lib.licenses.bsd3;
  broken = false;
}

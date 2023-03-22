{ mkDerivation, QuickCheck, base, bytestring, doctest, gauge, lib
, math-functions, mersenne-random, primitive, random, tasty
, tasty-hunit, tasty-quickcheck, time, vector
}:
mkDerivation {
  pname = "mwc-random";
  version = "0.15.0.2";
  sha256 = "35d64d5d6f8e93321d36952cf9ab64e21a9cad642ba39aa7378d88aa08afc25b";
  revision = "1";
  editedCabalFile = "15q5pax8708shpmmf2ql6ximsidzmfsrqkf4ix3dljz65jvhz7hh";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base math-functions primitive random time vector
  ];
  testHaskellDepends = [
    base bytestring doctest primitive QuickCheck random tasty
    tasty-hunit tasty-quickcheck vector
  ];
  benchmarkHaskellDepends = [
    base gauge mersenne-random random vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/bos/mwc-random";
  description = "Fast, high quality pseudo random number generation";
  license = lib.licenses.bsd3;
  broken = false;
}
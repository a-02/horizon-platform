{ mkDerivation, QuickCheck, base, bitvec, bytestring, containers
, lib, mwc-random, primitive, vector
}:
mkDerivation {
  pname = "vector-algorithms";
  version = "0.9.0.1";
  sha256 = "2ba7c0d3a8f26ef3ada24ff4abe81609225ecbab3b5754f048f8a0a3ecc33841";
  revision = "2";
  editedCabalFile = "081adj7krcfv2i0cmy6k59jcp2f9j7ywl5r1fvglxa99amlwdrgk";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bitvec bytestring primitive vector
  ];
  testHaskellDepends = [
    base bytestring containers QuickCheck vector
  ];
  benchmarkHaskellDepends = [ base mwc-random vector ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/erikd/vector-algorithms/";
  description = "Efficient algorithms for vector arrays";
  license = lib.licenses.bsd3;
  broken = false;
}
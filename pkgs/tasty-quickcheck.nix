{ mkDerivation, QuickCheck, base, lib, optparse-applicative
, pcre-light, random, tagged, tasty, tasty-hunit
}:
mkDerivation {
  pname = "tasty-quickcheck";
  version = "0.10.2";
  sha256 = "b4884c815db26a543ee1062664ee051ac89d51b2c2526d30029c6eb95b36cce2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base optparse-applicative QuickCheck random tagged tasty
  ];
  testHaskellDepends = [ base pcre-light tasty tasty-hunit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/UnkindPartition/tasty";
  description = "QuickCheck support for the Tasty test framework";
  license = lib.licenses.mit;
  broken = false;
}
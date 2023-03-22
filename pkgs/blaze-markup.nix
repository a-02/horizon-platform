{ mkDerivation, HUnit, QuickCheck, base, blaze-builder, bytestring
, containers, lib, tasty, tasty-hunit, tasty-quickcheck, text
}:
mkDerivation {
  pname = "blaze-markup";
  version = "0.8.2.8";
  sha256 = "43fc3f6872dc8d1be8d0fe091bd4775139b42179987f33d6490a7c5f1e07a349";
  revision = "4";
  editedCabalFile = "1vlyk6nw2i9bbrvzdq42cd2583lfc8i9rcgmqcvdz5rkp47hbzm8";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base blaze-builder bytestring text ];
  testHaskellDepends = [
    base blaze-builder bytestring containers HUnit QuickCheck tasty
    tasty-hunit tasty-quickcheck text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://jaspervdj.be/blaze";
  description = "A blazingly fast markup combinator library for Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
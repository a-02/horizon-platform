{ mkDerivation, QuickCheck, base, blaze-builder, bytestring
, double-conversion, ghc-prim, integer-gmp, lib, old-locale
, test-framework, test-framework-quickcheck2, text, vector
}:
mkDerivation {
  pname = "blaze-textual";
  version = "0.2.3.1";
  sha256 = "dd2acac978433e4001302190e530829707203febbc664966c3d347ecac5717b2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base blaze-builder bytestring ghc-prim integer-gmp old-locale text
    vector
  ];
  testHaskellDepends = [
    base blaze-builder bytestring double-conversion QuickCheck
    test-framework test-framework-quickcheck2
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/swamp-agr/blaze-textual";
  description = "Fast rendering of common datatypes";
  license = lib.licenses.bsd3;
  broken = false;
}
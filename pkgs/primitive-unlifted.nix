{ mkDerivation, QuickCheck, array, base, bytestring, lib, primitive
, quickcheck-classes-base, stm, tasty, tasty-quickcheck, text-short
}:
mkDerivation {
  pname = "primitive-unlifted";
  version = "2.1.0.0";
  sha256 = "613421078a2f4c012a99233dbc7a8ff0a17a0cb5abfd9baf544f4695751a3d1e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring primitive text-short
  ];
  testHaskellDepends = [
    base primitive QuickCheck quickcheck-classes-base stm tasty
    tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-primitive/primitive-unlifted";
  description = "Primitive GHC types with unlifted types inside";
  license = lib.licenses.bsd3;
  broken = false;
}
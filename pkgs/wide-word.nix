{ mkDerivation, QuickCheck, base, binary, bytestring, deepseq
, ghc-prim, hashable, hedgehog, lib, primitive, quickcheck-classes
, semirings
}:
mkDerivation {
  pname = "wide-word";
  version = "0.1.6.0";
  sha256 = "df6aa01a18d2b191f96793fab1cb4b43d465f8c9ad5239f9df4ca9255b059797";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base binary deepseq ghc-prim hashable primitive
  ];
  testHaskellDepends = [
    base binary bytestring ghc-prim hedgehog primitive QuickCheck
    quickcheck-classes semirings
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/erikd/wide-word";
  description = "Data types for large but fixed width signed and unsigned integers";
  license = lib.licenses.bsd2;
  broken = false;
}
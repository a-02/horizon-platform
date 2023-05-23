{ mkDerivation, QuickCheck, base, binary, bytestring, deepseq
, ghc-prim, hashable, hedgehog, lib, primitive, quickcheck-classes
, semirings
}:
mkDerivation {
  pname = "wide-word";
  version = "0.1.5.0";
  sha256 = "a732e9fe6eb2c52c744e2250c908126eee4f558ca2d2117a5e6b48023b5b41c0";
  revision = "2";
  editedCabalFile = "1zq74zgh82zcxnn9knha6qn36k4sqm93mcck45h8pd6c7yzfc0jx";
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
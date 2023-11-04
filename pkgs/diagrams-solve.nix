{ mkDerivation, base, deepseq, lib, tasty, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "diagrams-solve";
  version = "0.1.3";
  sha256 = "27b4bba55f5c2aae94903fbe7958f27744c0ff6a805ceb8a046ab4bd36e31827";
  revision = "2";
  editedCabalFile = "08l6q5751lrpyrjiliig94a2s7ahlm2045bp5mngnl9nf6xr1rwb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [
    base deepseq tasty tasty-hunit tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://diagrams.github.io";
  description = "Pure Haskell solver routines used by diagrams";
  license = lib.licenses.bsd3;
  broken = false;
}
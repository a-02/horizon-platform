{ mkDerivation, HUnit, base, deepseq, ghc-prim, lib, test-framework
, test-framework-hunit
}:
mkDerivation {
  pname = "deepseq-generics";
  version = "0.2.0.0";
  sha256 = "b0b3ef5546c0768ef9194519a90c629f8f2ba0348487e620bb89d512187c7c9d";
  revision = "9";
  editedCabalFile = "1ww3328aga9s7knbl8xxvsff13gdnl3rdqplpx11rl6k6gnr032k";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq ghc-prim ];
  testHaskellDepends = [
    base deepseq ghc-prim HUnit test-framework test-framework-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-hvr/deepseq-generics";
  description = "GHC.Generics-based Control.DeepSeq.rnf implementation";
  license = lib.licenses.bsd3;
  broken = false;
}
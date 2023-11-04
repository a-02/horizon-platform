{ mkDerivation, QuickCheck, base, base-compat, base-orphans
, containers, ghc-boot-th, ghc-prim, hspec, hspec-discover, lib
, tagged, template-haskell, th-abstraction, transformers
, transformers-compat, void
}:
mkDerivation {
  pname = "deriving-compat";
  version = "0.6.5";
  sha256 = "47412ecf53461a43d4cc2b705cbc9bb4a958bff7b9008a2582c26b73df5532f3";
  revision = "1";
  editedCabalFile = "093kv76593jr1af12c5idqr97mbkf9vs93zbhrw7kcqwiydpsi91";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers ghc-boot-th ghc-prim template-haskell
    th-abstraction transformers transformers-compat
  ];
  testHaskellDepends = [
    base base-compat base-orphans hspec QuickCheck tagged
    template-haskell transformers transformers-compat void
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-compat/deriving-compat";
  description = "Backports of GHC deriving extensions";
  license = lib.licenses.bsd3;
  broken = false;
}
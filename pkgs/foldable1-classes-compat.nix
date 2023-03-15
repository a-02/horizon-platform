{ mkDerivation
, QuickCheck
, base
, containers
, criterion
, deepseq
, ghc-prim
, lib
, quickcheck-instances
, tagged
, test-framework
, test-framework-quickcheck2
, transformers
}:
mkDerivation {
  pname = "foldable1-classes-compat";
  version = "0.1";
  sha256 = "d057c3f358e1a6b72c73519bc64ba6aa959f066c08fed69f73258555ef95ff12";
  revision = "2";
  editedCabalFile = "05sdpi0c503xgrgg2cg4922r5ja5154lfwzi9mgcmxncsk02a4l5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    ghc-prim
    tagged
    transformers
  ];
  testHaskellDepends = [
    base
    containers
    QuickCheck
    quickcheck-instances
    test-framework
    test-framework-quickcheck2
    transformers
  ];
  benchmarkHaskellDepends = [
    base
    containers
    criterion
    deepseq
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-compat/foldable1-classes-compat";
  description = "Compatibility package for the Foldable1 and Bifoldable1 type classes";
  license = lib.licenses.bsd3;
  broken = false;
}

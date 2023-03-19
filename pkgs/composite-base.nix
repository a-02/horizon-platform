{ mkDerivation, QuickCheck, base, deepseq, exceptions, hspec, lens
, lib, monad-control, mtl, profunctors, template-haskell, text
, transformers, transformers-base, unliftio-core, vinyl
}:
mkDerivation {
  pname = "composite-base";
  version = "0.8.2.1";
  sha256 = "31b7fe24885d2db164524a4477058157592ae06a75da5259f0eafc5760555544";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base deepseq exceptions lens monad-control mtl profunctors
    template-haskell text transformers transformers-base unliftio-core
    vinyl
  ];
  testHaskellDepends = [
    base deepseq exceptions hspec lens monad-control mtl profunctors
    QuickCheck template-haskell text transformers transformers-base
    unliftio-core vinyl
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/composite-hs/composite-base#readme";
  description = "Shared utilities for composite-* packages";
  license = lib.licenses.bsd3;
  broken = false;
}
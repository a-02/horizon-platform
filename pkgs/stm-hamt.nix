{ mkDerivation
, QuickCheck
, async
, base
, criterion
, deferred-folds
, focus
, free
, hashable
, lib
, list-t
, mwc-random
, mwc-random-monad
, primitive
, primitive-extras
, quickcheck-instances
, rebase
, rerebase
, tasty
, tasty-hunit
, tasty-quickcheck
, transformers
}:
mkDerivation {
  pname = "stm-hamt";
  version = "1.2.0.8";
  sha256 = "6c74d4ba2292d0be95fa1599c40180953a24d9dbb5d12cc27cba475dde9676dc";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    deferred-folds
    focus
    hashable
    list-t
    primitive
    primitive-extras
    transformers
  ];
  testHaskellDepends = [
    deferred-folds
    focus
    QuickCheck
    quickcheck-instances
    rerebase
    tasty
    tasty-hunit
    tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    async
    criterion
    focus
    free
    list-t
    mwc-random
    mwc-random-monad
    rebase
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/stm-hamt";
  description = "STM-specialised Hash Array Mapped Trie";
  license = lib.licenses.mit;
  broken = false;
}

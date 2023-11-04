{ mkDerivation, QuickCheck, base, containers, deepseq, hashable
, lib, primes, singletons, tasty, tasty-hunit, tasty-quickcheck
, tasty-th, template-haskell
}:
mkDerivation {
  pname = "finite-field";
  version = "0.10.0";
  sha256 = "b279ac001447da39cae504ecd3fc5efed43814fdf6f680c0d4a8afd7086882b3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base deepseq hashable singletons template-haskell
  ];
  testHaskellDepends = [
    base containers deepseq hashable primes QuickCheck singletons tasty
    tasty-hunit tasty-quickcheck tasty-th
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Finite Fields";
  license = lib.licenses.bsd3;
  broken = false;
}
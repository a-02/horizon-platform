{ mkDerivation, QuickCheck, base, base-compat, bytestring
, criterion, deferred-folds, isomorphism-class, lib
, quickcheck-classes, quickcheck-instances, rerebase, split, tasty
, tasty-hunit, tasty-quickcheck, text, time, transformers
}:
mkDerivation {
  pname = "text-builder-dev";
  version = "0.3.4.1";
  sha256 = "813f35049e9e542129e2ed6a3eab390d6ca048f21da061a4774b59ce0fc6b324";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring deferred-folds isomorphism-class QuickCheck
    quickcheck-instances split text time transformers
  ];
  testHaskellDepends = [
    base-compat quickcheck-classes quickcheck-instances rerebase tasty
    tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ criterion rerebase ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/text-builder-dev";
  description = "Edge of developments for \"text-builder\"";
  license = lib.licenses.mit;
  broken = false;
}
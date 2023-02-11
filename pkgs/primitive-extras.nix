{ mkDerivation
, QuickCheck
, base
, bytestring
, cereal
, deferred-folds
, focus
, foldl
, lib
, list-t
, primitive
, primitive-unlifted
, profunctors
, quickcheck-instances
, rerebase
, tasty
, tasty-hunit
, tasty-quickcheck
, vector
}:
mkDerivation {
  pname = "primitive-extras";
  version = "0.10.1.5";
  sha256 = "5ae268716aa5beba45fe717e6f01f1b6c5ac13abc328805180496b8ad47eb176";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    cereal
    deferred-folds
    focus
    foldl
    list-t
    primitive
    primitive-unlifted
    profunctors
    vector
  ];
  testHaskellDepends = [
    cereal
    deferred-folds
    focus
    primitive
    QuickCheck
    quickcheck-instances
    rerebase
    tasty
    tasty-hunit
    tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/metrix-ai/primitive-extras";
  description = "Extras for the \"primitive\" library";
  license = lib.licenses.mit;
  broken = false;
}

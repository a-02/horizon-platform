{ mkDerivation
, QuickCheck
, base
, lib
, quickcheck-instances
, rerebase
, tasty
, tasty-hunit
, tasty-quickcheck
, transformers
}:
mkDerivation {
  pname = "focus";
  version = "1.0.3";
  sha256 = "353050e457bfe945ce8bda3513206a9d3fd2ac93112791953d2afd32017e060e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base transformers ];
  testHaskellDepends = [
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
  homepage = "https://github.com/nikita-volkov/focus";
  description = "A general abstraction for manipulating elements of container data structures";
  license = lib.licenses.mit;
  broken = false;
}

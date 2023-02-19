{ mkDerivation
, QuickCheck
, base
, bytestring
, containers
, foldl
, hashable
, lib
, primitive
, quickcheck-instances
, rerebase
, tasty
, tasty-hunit
, tasty-quickcheck
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {
  pname = "deferred-folds";
  version = "0.9.18.2";
  sha256 = "26ddc60183478033735f82ba506db93032fb8c7fe91b7e72a0d8f9f05febb42a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    containers
    foldl
    hashable
    primitive
    text
    transformers
    unordered-containers
    vector
  ];
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
  homepage = "https://github.com/metrix-ai/deferred-folds";
  description = "Abstractions over deferred folds";
  license = lib.licenses.mit;
  broken = false;
}

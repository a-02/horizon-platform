{ mkDerivation, QuickCheck, base, bytestring, containers, foldl
, hashable, lib, primitive, quickcheck-instances, rerebase, tasty
, tasty-hunit, tasty-quickcheck, text, transformers
, unordered-containers, vector
}:
mkDerivation {
  pname = "deferred-folds";
  version = "0.9.18.3";
  sha256 = "3b2130eaa080d199380ad6a139c4eb8198ccc9291b5878dcb5aeb15b19f64774";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers foldl hashable primitive text
    transformers unordered-containers vector
  ];
  testHaskellDepends = [
    QuickCheck quickcheck-instances rerebase tasty tasty-hunit
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
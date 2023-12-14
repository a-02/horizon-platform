{ mkDerivation, base, bytestring, containers, foldl, hashable, lib
, primitive, quickcheck-instances, rerebase, tasty
, tasty-quickcheck, text, transformers, unordered-containers
, vector
}:
mkDerivation {
  pname = "deferred-folds";
  version = "0.9.18.6";
  sha256 = "ebffce410040c77d2babee73f45ab7e79da7dcec424590a991b6dc0b8a1b8f02";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers foldl hashable primitive text
    transformers unordered-containers vector
  ];
  testHaskellDepends = [
    quickcheck-instances rerebase tasty tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/deferred-folds";
  description = "Abstractions over deferred folds";
  license = lib.licenses.mit;
  broken = false;
}
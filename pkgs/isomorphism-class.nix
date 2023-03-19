{ mkDerivation, QuickCheck, base, bytestring, containers, hashable
, lib, primitive, quickcheck-instances, rebase, tasty, tasty-hunit
, tasty-quickcheck, text, unordered-containers, vector
}:
mkDerivation {
  pname = "isomorphism-class";
  version = "0.1.0.9";
  sha256 = "2fbaa8cf141489a2107e294e50628dc7797b8e3218069bdfbc387ab9547d1bb4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers hashable primitive text
    unordered-containers vector
  ];
  testHaskellDepends = [
    base bytestring containers hashable primitive QuickCheck
    quickcheck-instances rebase tasty tasty-hunit tasty-quickcheck text
    unordered-containers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/isomorphism-class";
  description = "Isomorphism typeclass solving the conversion problem";
  license = lib.licenses.mit;
  broken = false;
}
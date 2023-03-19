{ mkDerivation, OneTuple, QuickCheck, base, binary, lib
, quickcheck-instances, tagged, tasty, tasty-quickcheck
, transformers
}:
mkDerivation {
  pname = "binary-orphans";
  version = "1.0.4.1";
  sha256 = "5f5b789bc86d25bbd054b86b2d9a6a03f4ac0dd480f283564b6d6465cfa2f0d2";
  revision = "2";
  editedCabalFile = "1q9fbn41fi4wfk8mrm9izy5jna86gmy7gxhz94crqfhp5f89v58l";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base binary transformers ];
  testHaskellDepends = [
    base binary OneTuple QuickCheck quickcheck-instances tagged tasty
    tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Compatibility package for binary; provides instances";
  license = lib.licenses.bsd3;
  broken = false;
}
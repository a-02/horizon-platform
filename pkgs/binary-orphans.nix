{ mkDerivation, OneTuple, QuickCheck, base, binary, lib
, quickcheck-instances, tagged, tasty, tasty-quickcheck
, transformers
}:
mkDerivation {
  pname = "binary-orphans";
  version = "1.0.4.1";
  sha256 = "5f5b789bc86d25bbd054b86b2d9a6a03f4ac0dd480f283564b6d6465cfa2f0d2";
  revision = "3";
  editedCabalFile = "085flwx82nvvyb479jma9j62q8i9sbz65rarsqhasgz4vczxqawx";
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Compatibility package for binary; provides instances";
  license = lib.licenses.bsd3;
  broken = false;
}
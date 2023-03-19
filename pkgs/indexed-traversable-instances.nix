{ mkDerivation, OneTuple, QuickCheck, base, containers
, indexed-traversable, lib, quickcheck-instances, tagged, tasty
, tasty-quickcheck, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "indexed-traversable-instances";
  version = "0.1.1.2";
  sha256 = "0f9b4e895ccc819f74d15f913c93613cc74cab74dbb05d7e305aa387bdbe374a";
  revision = "1";
  editedCabalFile = "1vyfs8xwxm2ipgiinzrp41pl0cy2xrmx7a9iim4vlz1sca1yv4xl";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base indexed-traversable OneTuple tagged unordered-containers
    vector
  ];
  testHaskellDepends = [
    base containers indexed-traversable OneTuple QuickCheck
    quickcheck-instances tasty tasty-quickcheck transformers
    unordered-containers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "More instances of FunctorWithIndex, FoldableWithIndex, TraversableWithIndex";
  license = lib.licenses.bsd2;
  broken = false;
}
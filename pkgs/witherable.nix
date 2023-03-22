{ mkDerivation, QuickCheck, base, base-orphans, containers
, hashable, indexed-traversable, indexed-traversable-instances, lib
, quickcheck-instances, tasty, tasty-quickcheck, transformers
, unordered-containers, vector
}:
mkDerivation {
  pname = "witherable";
  version = "0.4.2";
  sha256 = "790d2bb274283419173bd89104439860675a9410f70f21912973ecd9098b4104";
  revision = "4";
  editedCabalFile = "1f6kb8cslgqq4x3mbg1gcxfbd9qb5a8hmrv802mm7zzhbnridiff";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base-orphans containers hashable indexed-traversable
    indexed-traversable-instances transformers unordered-containers
    vector
  ];
  testHaskellDepends = [
    base containers hashable QuickCheck quickcheck-instances tasty
    tasty-quickcheck transformers unordered-containers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fumieval/witherable";
  description = "filterable traversable";
  license = lib.licenses.bsd3;
  broken = false;
}
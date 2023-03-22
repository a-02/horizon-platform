{ mkDerivation, ChasingBottoms, HUnit, QuickCheck, base, bytestring
, containers, deepseq, hashable, hashmap, lib, mtl, nothunks
, random, tasty, tasty-bench, tasty-hunit, tasty-quickcheck
, template-haskell
}:
mkDerivation {
  pname = "unordered-containers";
  version = "0.2.19.1";
  sha256 = "1b27bec5e0d522b27a6029ebf4c4a6d40acbc083c787008e32fb55c4b1d128d2";
  revision = "2";
  editedCabalFile = "005avgikg676gc2pw1sqia61nypx2wajdqghsjqkfg4i5qn9gn4s";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq hashable template-haskell ];
  testHaskellDepends = [
    base ChasingBottoms containers hashable HUnit nothunks QuickCheck
    random tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base bytestring containers deepseq hashable hashmap mtl random
    tasty-bench
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-unordered-containers/unordered-containers";
  description = "Efficient hashing-based container types";
  license = lib.licenses.bsd3;
  broken = false;
}
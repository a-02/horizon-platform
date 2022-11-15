{ mkDerivation
, base
, base16-bytestring
, bytestring
, criterion
, lib
, pureMD5
, tasty
, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "cryptohash-md5";
  version = "0.11.101.0";
  sha256 = "3b08db0ae39df2b44e83053ad30d7546a4c6200a852c22a240a7e03ae1080f05";
  revision = "1";
  editedCabalFile = "0s2f5cd46lqymmbpcnzlxsim5qk8yrr52j5mmi31zrhd24b3bqln";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ];
  testHaskellDepends = [
    base
    base16-bytestring
    bytestring
    pureMD5
    tasty
    tasty-hunit
    tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base bytestring criterion ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hvr/cryptohash-md5";
  description = "Fast, pure and practical MD5 implementation";
  license = lib.licenses.bsd3;
  broken = false;
}

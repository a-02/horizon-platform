{ mkDerivation
, base
, binary
, bytestring
, cryptohash-md5
, cryptohash-sha1
, entropy
, lib
, network-info
, QuickCheck
, random
, tasty
, tasty-hunit
, tasty-quickcheck
, text
, time
, uuid-types
}:
mkDerivation {
  pname = "uuid";
  version = "1.3.15";
  sha256 = "f885958d8934930b7c0f9b91f980722f7f992c9383fc98f075cf9df64c800564";
  revision = "2";
  editedCabalFile = "06j1hk4alypnwd4v55w6lfm1jrsaqh85k350qmymw0sqbrd9rmx3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    binary
    bytestring
    cryptohash-md5
    cryptohash-sha1
    entropy
    network-info
    random
    text
    time
    uuid-types
  ];
  testHaskellDepends = [
    base
    bytestring
    QuickCheck
    random
    tasty
    tasty-hunit
    tasty-quickcheck
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-hvr/uuid";
  description = "For creating, comparing, parsing and printing Universally Unique Identifiers";
  license = lib.licenses.bsd3;
  broken = false;
}

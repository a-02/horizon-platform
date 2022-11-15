{ mkDerivation
, base
, containers
, effectful
, effectful-core
, fetchgit
, hedgehog
, kvstore-effectful
, lib
, tasty
, tasty-hedgehog
, transformers
}:
mkDerivation {
  pname = "kvstore-effectful-spec";
  version = "0.0.1.0";
  src = fetchgit {
    url = "https://github.com/haskell-effectful/kvstore-effectful";
    sha256 = "1s78x8yqig17dhfwf2qbd01k8symzrjvg8w0i16mckyxpm28aqcq";
    rev = "3502825423aea3a1af9384e9d751feea4599c60b";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/kvstore-effectful-spec/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    effectful
    effectful-core
    hedgehog
    kvstore-effectful
    tasty
    tasty-hedgehog
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  license = lib.licenses.bsd3;
  broken = false;
}

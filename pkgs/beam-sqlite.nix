{ mkDerivation, aeson, attoparsec, base, beam-core, beam-migrate
, bytestring, dlist, fetchgit, free, hashable, lib, monad-control
, mtl, network-uri, scientific, sqlite-simple, tasty
, tasty-expected-failure, tasty-hunit, text, time
, transformers-base, unix
}:
mkDerivation {
  pname = "beam-sqlite";
  version = "0.5.2.0";
  src = fetchgit {
    url = "https://github.com/haskell-beam/beam";
    sha256 = "0mzik3yy8hsj7qkw43j7nsn1gxd2lpdn5s5826zi9vhpvs7gdyn4";
    rev = "96e35be86dfffe4aa0b8190f7b8656e30cb36301";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/beam-sqlite/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson attoparsec base beam-core beam-migrate bytestring dlist free
    hashable monad-control mtl network-uri scientific sqlite-simple
    text time transformers-base unix
  ];
  testHaskellDepends = [
    base beam-core beam-migrate sqlite-simple tasty
    tasty-expected-failure tasty-hunit text time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://haskell-beam.github.io/beam/user-guide/backends/beam-sqlite/";
  description = "Beam driver for SQLite";
  license = lib.licenses.mit;
  broken = false;
}
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
    sha256 = "05yvc8hw0b2f8dg8lz8w1a2y90pwi10iwqa0b2xjhrlacwi0fci9";
    rev = "94461937c5ca8b89f1ff1a60bde5bffe207315b4";
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
{ mkDerivation, aeson, base, beam-core, bytestring, containers
, deepseq, dependent-map, dependent-sum, fetchgit, free, ghc-prim
, hashable, haskell-src-exts, lib, microlens, mtl, parallel, pqueue
, pretty, scientific, text, time, unordered-containers, uuid-types
, vector
}:
mkDerivation {
  pname = "beam-migrate";
  version = "0.5.2.0";
  src = fetchgit {
    url = "https://github.com/haskell-beam/beam";
    sha256 = "05yvc8hw0b2f8dg8lz8w1a2y90pwi10iwqa0b2xjhrlacwi0fci9";
    rev = "94461937c5ca8b89f1ff1a60bde5bffe207315b4";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/beam-migrate/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base beam-core bytestring containers deepseq dependent-map
    dependent-sum free ghc-prim hashable haskell-src-exts microlens mtl
    parallel pqueue pretty scientific text time unordered-containers
    uuid-types vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://travis.athougies.net/projects/beam.html";
  description = "SQL DDL support and migrations support library for Beam";
  license = lib.licenses.mit;
  broken = false;
}
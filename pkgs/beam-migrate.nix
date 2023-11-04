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
    sha256 = "0mzik3yy8hsj7qkw43j7nsn1gxd2lpdn5s5826zi9vhpvs7gdyn4";
    rev = "96e35be86dfffe4aa0b8190f7b8656e30cb36301";
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://travis.athougies.net/projects/beam.html";
  description = "SQL DDL support and migrations support library for Beam";
  license = lib.licenses.mit;
  broken = false;
}
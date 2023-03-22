{ mkDerivation, aeson, base, bytestring, containers, dlist
, fetchgit, free, ghc-prim, hashable, lib, microlens, mtl
, network-uri, scientific, tagged, tasty, tasty-hunit, text, time
, vector, vector-sized
}:
mkDerivation {
  pname = "beam-core";
  version = "0.10.0.0";
  src = fetchgit {
    url = "https://github.com/haskell-beam/beam";
    sha256 = "05yvc8hw0b2f8dg8lz8w1a2y90pwi10iwqa0b2xjhrlacwi0fci9";
    rev = "94461937c5ca8b89f1ff1a60bde5bffe207315b4";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/beam-core/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers dlist free ghc-prim hashable
    microlens mtl network-uri scientific tagged text time vector
    vector-sized
  ];
  testHaskellDepends = [
    base bytestring tasty tasty-hunit text time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://travis.athougies.net/projects/beam.html";
  description = "Type-safe, feature-complete SQL query and manipulation interface for Haskell";
  license = lib.licenses.mit;
  broken = false;
}
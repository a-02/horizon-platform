{ mkDerivation, aeson, base, bytestring, containers, dlist
, fetchgit, free, ghc-prim, hashable, lib, microlens, mtl
, network-uri, scientific, tagged, tasty, tasty-hunit, text, time
, vector, vector-sized
}:
mkDerivation {
  pname = "beam-core";
  version = "0.10.1.0";
  src = fetchgit {
    url = "https://github.com/haskell-beam/beam";
    sha256 = "0mzik3yy8hsj7qkw43j7nsn1gxd2lpdn5s5826zi9vhpvs7gdyn4";
    rev = "96e35be86dfffe4aa0b8190f7b8656e30cb36301";
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
    base bytestring microlens tasty tasty-hunit text time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://travis.athougies.net/projects/beam.html";
  description = "Type-safe, feature-complete SQL query and manipulation interface for Haskell";
  license = lib.licenses.mit;
  broken = false;
}
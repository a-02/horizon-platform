{ mkDerivation, MonadRandom, QuickCheck, async, autodocodec
, autodocodec-yaml, base, bytestring, containers, dlist, envparse
, fetchgit, filepath, lib, mtl, optparse-applicative, path, path-io
, pretty-show, quickcheck-io, random, random-shuffle, safe
, safe-coloured-text, safe-coloured-text-terminfo, stm
, sydtest-discover, text, vector
}:
mkDerivation {
  pname = "sydtest";
  version = "0.13.0.1";
  src = fetchgit {
    url = "https://github.com/locallycompact/sydtest";
    sha256 = "0ab1v9lqaq42ajndsddcaqbjv9467iaidp1vwmyb65ic0g0wl4nz";
    rev = "01c7d35b822c66a68e4d2ba5594858afbcc1cbf0";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/sydtest/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async autodocodec autodocodec-yaml base bytestring containers dlist
    envparse filepath MonadRandom mtl optparse-applicative path path-io
    pretty-show QuickCheck quickcheck-io random random-shuffle safe
    safe-coloured-text safe-coloured-text-terminfo stm text vector
  ];
  testHaskellDepends = [
    base bytestring path path-io QuickCheck random safe-coloured-text
    stm text vector
  ];
  testToolDepends = [ sydtest-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/sydtest#readme";
  description = "A modern testing framework for Haskell with good defaults and advanced testing features";
  license = "unknown";
  broken = false;
}
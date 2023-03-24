{ mkDerivation, MonadRandom, QuickCheck, async, autodocodec
, autodocodec-yaml, base, bytestring, containers, dlist, envparse
, filepath, lib, mtl, optparse-applicative, path, path-io
, pretty-show, quickcheck-io, random, random-shuffle, safe
, safe-coloured-text, safe-coloured-text-terminfo, stm
, sydtest-discover, text, vector
}:
mkDerivation {
  pname = "sydtest";
  version = "0.13.0.2";
  sha256 = "34113504c1890a4aa57ea9a594bee6ab1fea48170e638d9b78b9bc52c18e2606";
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
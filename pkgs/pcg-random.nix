{ mkDerivation, Cabal, base, bytestring, cabal-doctest, doctest
, entropy, lib, primitive, random
}:
mkDerivation {
  pname = "pcg-random";
  version = "0.1.3.7";
  sha256 = "e6c8c26841b5d0d6d9e2816e952e397062730fd1a0bc13cf7c3ebcba6dc1d2d0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    base bytestring entropy primitive random
  ];
  testHaskellDepends = [ base doctest ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/cchalmers/pcg-random";
  description = "Haskell bindings to the PCG random number generator";
  license = lib.licenses.bsd3;
  broken = false;
}
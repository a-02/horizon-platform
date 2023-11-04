{ mkDerivation, base, erf, lib, math-functions, monad-loops, mtl
, random, random-shuffle, rvar, syb, template-haskell, transformers
, vector
}:
mkDerivation {
  pname = "random-fu";
  version = "0.3.0.1";
  sha256 = "06e6691279e4fcf176d79ad33a4ca6a8d7d831123d64d798f3e5aae4b7c45e40";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base erf math-functions monad-loops mtl random random-shuffle rvar
    syb template-haskell transformers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mokus0/random-fu";
  description = "Random number generation";
  license = lib.licenses.publicDomain;
  broken = false;
}
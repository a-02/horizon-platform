{ mkDerivation, Cabal, base, bytestring, cabal-doctest, doctest
, entropy, lib, primitive, random
}:
mkDerivation {
  pname = "pcg-random";
  version = "0.1.4.0";
  sha256 = "6ec9a7d627331ea0262118b741434ef517f096a678cb74ecd563fd3ed6641626";
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/cchalmers/pcg-random";
  description = "Haskell bindings to the PCG random number generator";
  license = lib.licenses.bsd3;
  broken = false;
}
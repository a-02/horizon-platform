{ mkDerivation, base, clock, hashable, hspec, lib, stm
, transformers, unordered-containers
}:
mkDerivation {
  pname = "cache";
  version = "0.1.3.0";
  sha256 = "42e9d9f040fab2fd5fc1095a901d6348de73342b1d14254bdaf6ca3d4f11e534";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base clock hashable stm transformers unordered-containers
  ];
  testHaskellDepends = [ base clock hspec stm transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hverr/haskell-cache#readme";
  description = "An in-memory key/value store with expiration support";
  license = lib.licenses.bsd3;
  broken = false;
}
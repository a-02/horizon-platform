{ mkDerivation, base, effectful-core, fetchgit, hashable, lib, mtl
, servant, servant-server, tasty, tasty-hunit, wai, warp
}:
mkDerivation {
  pname = "servant-effectful";
  version = "0.0.1.0";
  src = fetchgit {
    url = "https://github.com/kleidukos/servant-effectful";
    sha256 = "0klxkjhyy8bcm7azdvhq75zfwga08s7fjxpqx5i7ljl04ac74hsi";
    rev = "21b5a1d7cb209f3b4594167bb0b5a8d632c8a8e1";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base effectful-core hashable mtl servant servant-server wai warp
  ];
  testHaskellDepends = [
    base effectful-core hashable servant servant-server tasty
    tasty-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-effectful/servant-effectful/tree/main/servant-effectful#readme";
  license = lib.licenses.mit;
  broken = false;
}
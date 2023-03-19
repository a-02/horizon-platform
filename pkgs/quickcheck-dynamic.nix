{ mkDerivation, QuickCheck, base, containers, lib, mtl, random }:
mkDerivation {
  pname = "quickcheck-dynamic";
  version = "3.0.2";
  sha256 = "1e02d4067495fdd7e13c99accc1efceebce6ff1408e617f1a56dbaa247d9e345";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers mtl QuickCheck random ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/quickcheck-dynamic#readme";
  description = "A library for stateful property-based testing";
  license = lib.licenses.asl20;
  broken = false;
}
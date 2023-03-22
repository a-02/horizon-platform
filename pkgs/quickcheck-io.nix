{ mkDerivation, HUnit, QuickCheck, base, lib }:
mkDerivation {
  pname = "quickcheck-io";
  version = "0.2.0";
  sha256 = "fb779119d79fe08ff4d502fb6869a70c9a8d5fd8ae0959f605c3c937efd96422";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base HUnit QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hspec/quickcheck-io#readme";
  description = "Use HUnit assertions as QuickCheck properties";
  license = lib.licenses.mit;
  broken = false;
}
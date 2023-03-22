{ mkDerivation, QuickCheck, base, containers, lib, transformers }:
mkDerivation {
  pname = "quickcheck-classes-base";
  version = "0.6.2.0";
  sha256 = "901945e1c442c558d739bc28088a5564f25c4f3615ce7f03b67c5ecc087e8699";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers QuickCheck transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/andrewthad/quickcheck-classes#readme";
  description = "QuickCheck common typeclasses from `base`";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, QuickCheck, base, lib, semigroups, utility-ht }:
mkDerivation {
  pname = "non-negative";
  version = "0.1.2";
  sha256 = "5614acf55f3c16a21fea263e375e8993f9b859e21997b0410c74fe6642c20138";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base QuickCheck semigroups utility-ht ];
  testHaskellDepends = [ base QuickCheck semigroups utility-ht ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://code.haskell.org/~thielema/non-negative/";
  description = "Non-negative numbers";
  license = "GPL";
  broken = false;
}

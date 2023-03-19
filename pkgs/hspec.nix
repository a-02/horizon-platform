{ mkDerivation, QuickCheck, base, hspec-core, hspec-discover
, hspec-expectations, lib
}:
mkDerivation {
  pname = "hspec";
  version = "2.10.10";
  sha256 = "9a4b5e63d51796d5f6c3590b8495a1cd8c600e1bf720086b6709ee00405d03a4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base hspec-core hspec-discover hspec-expectations QuickCheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hspec.github.io/";
  description = "A Testing Framework for Haskell";
  license = lib.licenses.mit;
  broken = false;
}
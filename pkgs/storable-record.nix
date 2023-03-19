{ mkDerivation, QuickCheck, base, lib, semigroups, transformers
, utility-ht
}:
mkDerivation {
  pname = "storable-record";
  version = "0.0.7";
  sha256 = "bec546c894d39182af50415743af226456a5f79da281d1a3c0b7db11362a2eb0";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base QuickCheck semigroups transformers utility-ht
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://code.haskell.org/~thielema/storable-record/";
  description = "Elegant definition of Storable instances for records";
  license = lib.licenses.bsd3;
  broken = false;
}
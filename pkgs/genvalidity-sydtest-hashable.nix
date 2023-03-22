{ mkDerivation, QuickCheck, base, genvalidity, genvalidity-sydtest
, hashable, lib, sydtest, sydtest-discover, validity
}:
mkDerivation {
  pname = "genvalidity-sydtest-hashable";
  version = "1.0.0.0";
  sha256 = "5f4442eb5902c86d72b8340152069d3c3cdb768d8eee0d81e469a650ad178814";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base genvalidity genvalidity-sydtest hashable QuickCheck sydtest
    validity
  ];
  testHaskellDepends = [
    base genvalidity genvalidity-sydtest hashable QuickCheck sydtest
    validity
  ];
  testToolDepends = [ sydtest-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "Standard spec's for Hashable instances for sydtest";
  license = lib.licenses.mit;
  broken = false;
}
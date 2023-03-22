{ mkDerivation, QuickCheck, base, genvalidity, lib, pretty-show
, sydtest, sydtest-discover, validity
}:
mkDerivation {
  pname = "genvalidity-sydtest";
  version = "1.0.0.0";
  sha256 = "8550737541526c8f51b29b70aa5b45ef33eb41b5e7ef29c97ad1b1ac91366687";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base genvalidity pretty-show QuickCheck sydtest validity
  ];
  testHaskellDepends = [ base genvalidity QuickCheck sydtest ];
  testToolDepends = [ sydtest-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "Standard properties for functions on `Validity` types for the sydtest framework";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation, QuickCheck, base, containers, lib, tagged
, transformers
}:
mkDerivation {
  pname = "universe-base";
  version = "1.1.3.1";
  sha256 = "a3e7ef305d79c58caa25276929f0cd2c129468484502b93b7f9b3b7b77e5732d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers tagged transformers ];
  testHaskellDepends = [ base containers QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/dmwit/universe";
  description = "A class for finite and recursively enumerable types";
  license = lib.licenses.bsd3;
  broken = false;
}
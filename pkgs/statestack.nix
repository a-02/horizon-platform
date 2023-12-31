{ mkDerivation, base, lib, mtl, transformers }:
mkDerivation {
  pname = "statestack";
  version = "0.3.1.1";
  sha256 = "cd55733032b34d671852c7b6d05c1645cea2f280ac35221d480cf721d5c7879c";
  revision = "1";
  editedCabalFile = "0rxndmrq4gj1bc9cf20477n8d6kpri31dyl6x8f4h57yiwhblg55";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base mtl transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Simple State-like monad transformer with saveable and restorable state";
  license = lib.licenses.bsd3;
  broken = false;
}
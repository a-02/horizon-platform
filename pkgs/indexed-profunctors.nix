{ mkDerivation, base, lib }:
mkDerivation {
  pname = "indexed-profunctors";
  version = "0.1.1";
  sha256 = "5aba418a92a4f75efc626de7c0e4d88ed57033e0de0f2743ce6d9c9ef7626cb1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Utilities for indexed profunctors";
  license = lib.licenses.bsd3;
  broken = false;
}
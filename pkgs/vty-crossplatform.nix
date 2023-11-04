{ mkDerivation, base, lib, vty, vty-unix }:
mkDerivation {
  pname = "vty-crossplatform";
  version = "0.1.0.0";
  sha256 = "3c0533fdf9ad65164bb7018dd5e6c9fe1f47be8396bd445bb75a6c6808f999f7";
  revision = "1";
  editedCabalFile = "0z5y357j0kjpvs3kpy7qm4ajcvfvng9jyfpgx104mr1ffgdk2xg0";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base vty vty-unix ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cross-platform support for Vty";
  license = lib.licenses.bsd3;
  broken = false;
}
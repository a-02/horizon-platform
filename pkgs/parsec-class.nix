{ mkDerivation, base, lib, parsec }:
mkDerivation {
  pname = "parsec-class";
  version = "1.0.0.0";
  sha256 = "029c4ec5e6b0efd0505f1051c29c02060ddab3018b9aef4c4ae96a99f58e1773";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base parsec ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/peti/parsec-class";
  description = "Class of types that can be constructed from their text representation";
  license = lib.licenses.mit;
  broken = false;
}
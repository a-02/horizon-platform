{ mkDerivation, base, lib }:
mkDerivation {
  pname = "fast-math";
  version = "1.0.2";
  sha256 = "45101ddc8b86402e866ec029bcfbc2662779e578e43b40acd971a9f411e2be95";
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
  description = "Non IEEE-754 compliant compile-time floating-point optimisations";
  license = lib.licenses.bsd3;
  broken = false;
}

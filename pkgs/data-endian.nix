{ mkDerivation, base, lib }:
mkDerivation {
  pname = "data-endian";
  version = "0.1.1";
  sha256 = "8c1d4f30374f8331d31f4d7c6b39284331b6b9436e7b50f86547417bd05f2ac0";
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
  homepage = "https://github.com/mvv/data-endian";
  description = "Endian-sensitive data";
  license = lib.licenses.bsd3;
  broken = false;
}
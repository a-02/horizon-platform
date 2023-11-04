{ mkDerivation, base, lib }:
mkDerivation {
  pname = "natural-arithmetic";
  version = "0.1.4.0";
  sha256 = "c4ff0cd6c39f2ca4e4f5e5ef6b9e076eedfe629ffdee85501f9aa792254b8289";
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
  homepage = "https://github.com/andrewthad/natural-arithmetic";
  description = "Arithmetic of natural numbers";
  license = lib.licenses.bsd3;
  broken = false;
}
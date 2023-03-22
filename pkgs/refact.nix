{ mkDerivation, base, lib }:
mkDerivation {
  pname = "refact";
  version = "0.3.0.2";
  sha256 = "0ad029727797c8ca5d179c7abf1bfc135d86a7d72cf93785ee12ad243aeb1f6c";
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
  description = "Specify refactorings to perform with apply-refact";
  license = lib.licenses.bsd3;
  broken = false;
}
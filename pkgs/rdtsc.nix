{ mkDerivation, base, lib }:
mkDerivation {
  pname = "rdtsc";
  version = "1.3.0.1";
  sha256 = "54c9a925f68d6c60b405e92f9d3bd9ebfc25cce0c72d2313a6c7e1b7cc2ed950";
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
  homepage = "https://github.com/mgrabmueller/rdtsc";
  description = "Binding for the rdtsc machine instruction";
  license = lib.licenses.bsd3;
  broken = false;
}
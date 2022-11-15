{ mkDerivation, base, data-default-class, dlist, lib }:
mkDerivation {
  pname = "data-default-instances-dlist";
  version = "0.0.1";
  sha256 = "7d683711cbf08abd7adcd5ac2be825381308d220397315a5570fe61b719b5959";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base data-default-class dlist ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Default instances for types in dlist";
  license = lib.licenses.bsd3;
  broken = false;
}

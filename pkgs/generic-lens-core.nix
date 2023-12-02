{ mkDerivation, base, indexed-profunctors, lib, text }:
mkDerivation {
  pname = "generic-lens-core";
  version = "2.2.1.0";
  sha256 = "8ee6f17baa52db80763a46814be391418441861b2e519bed8c047db37c622422";
  revision = "2";
  editedCabalFile = "028vm0h89civn7f4cvrh3b67s2qd82g4qn5src0mkm68gngz6bqd";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base indexed-profunctors text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kcsongor/generic-lens";
  description = "Generically derive traversals, lenses and prisms";
  license = lib.licenses.bsd3;
  broken = false;
}
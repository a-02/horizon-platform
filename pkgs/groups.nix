{ mkDerivation, base, lib }:
mkDerivation {
  pname = "groups";
  version = "0.5.3";
  sha256 = "ce1e52a8be7effbd1f995eadf0ed34fa45c412656d372db8a38f9c955e43ac38";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Groups";
  license = lib.licenses.bsd3;
  broken = false;
}
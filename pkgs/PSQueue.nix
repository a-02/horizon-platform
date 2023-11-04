{ mkDerivation, QuickCheck, base, lib }:
mkDerivation {
  pname = "PSQueue";
  version = "1.2.0";
  sha256 = "39003847be7f302a7059b4e103739677f3b205f2d41e63557acc40f9cc577be6";
  revision = "1";
  editedCabalFile = "17np95rwys8rlzlw7g7nsiwipzb5hxwh7frj6ffyrm0sb7jmf126";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Priority Search Queue";
  license = lib.licenses.bsd3;
  broken = false;
}
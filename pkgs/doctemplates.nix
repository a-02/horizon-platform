{ mkDerivation, Glob, aeson, base, bytestring, containers
, criterion, doclayout, filepath, lib, mtl, parsec, safe
, scientific, tasty, tasty-golden, tasty-hunit, temporary, text
, text-conversions, vector
}:
mkDerivation {
  pname = "doctemplates";
  version = "0.11";
  sha256 = "e0080c7f030e98ce6156fd31e77df4c83b8f3ee049beee5006ce923a0169546b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson base containers doclayout filepath mtl parsec safe scientific
    text text-conversions vector
  ];
  testHaskellDepends = [
    aeson base bytestring containers doclayout filepath Glob tasty
    tasty-golden tasty-hunit temporary text
  ];
  benchmarkHaskellDepends = [
    aeson base containers criterion doclayout filepath mtl text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jgm/doctemplates#readme";
  description = "Pandoc-style document templates";
  license = lib.licenses.bsd3;
  broken = false;
}
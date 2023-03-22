{ mkDerivation, base, containers, lib, universe-base }:
mkDerivation {
  pname = "universe-reverse-instances";
  version = "1.1.1";
  sha256 = "c4127e12a6af8d8e05f87e546a57fdc0bd7b7f47eaf85d4a0f1826c998cdfb73";
  revision = "3";
  editedCabalFile = "1skyr1b7jvlbphlnf373qx78qd41cz643cn7ssyncwbv30ndbs23";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers universe-base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/dmwit/universe";
  description = "Instances of standard classes that are made possible by enumerations";
  license = lib.licenses.bsd3;
  broken = false;
}
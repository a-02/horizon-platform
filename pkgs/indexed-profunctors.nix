{ mkDerivation, base, lib }:
mkDerivation {
  pname = "indexed-profunctors";
  version = "0.1.1.1";
  sha256 = "2e69bb2900bb7e562efffff7bcf3f72daf79f013232ce603263a57595412c398";
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
  description = "Utilities for indexed profunctors";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, base, lib }:
mkDerivation {
  pname = "flag";
  version = "0.1.0.0";
  sha256 = "2f75e174a0accdbde3526b362d9a52f1013740327ebbbe43adbe85053a82fb42";
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
  description = "A simple flag type";
  license = lib.licenses.mit;
  broken = false;
}
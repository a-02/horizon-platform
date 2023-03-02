{ mkDerivation, base, lib }:
mkDerivation {
  pname = "monadlist";
  version = "0.0.2";
  sha256 = "06bbe82c9fc2a35048788367da74bb5f79c7e6be2ae38eca20f332f8cbc5fdfe";
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
  description = "Monadic versions of list functions";
  license = lib.licenses.bsd3;
  broken = false;
}

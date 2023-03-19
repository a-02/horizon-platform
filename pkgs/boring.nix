{ mkDerivation, base, lib, tagged, transformers }:
mkDerivation {
  pname = "boring";
  version = "0.2.1";
  sha256 = "b1ffddf0f9d50ac8742aa01b270856d57937cc8f7aae783e3b5f3abee7aa3154";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base tagged transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/boring";
  description = "Boring and Absurd types";
  license = lib.licenses.bsd3;
  broken = false;
}
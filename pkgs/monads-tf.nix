{ mkDerivation, base, lib, transformers }:
mkDerivation {
  pname = "monads-tf";
  version = "0.1.0.3";
  sha256 = "249dd2aa55c4dd6530f1e49f6b052ec91bc590ecfef2bd24c58837a3f8d4b0f1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Monad classes, using type families";
  license = lib.licenses.bsd3;
  broken = false;
}
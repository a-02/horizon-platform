{ mkDerivation, base, containers, control-monad-free, haskeline
, lib, mtl, transformers
}:
mkDerivation {
  pname = "wizards";
  version = "1.0.3";
  sha256 = "05650d7bf6dd0e6b87d0d7da6fb003601ce5d7b1f3d69571127ec3c9425b9bb2";
  revision = "1";
  editedCabalFile = "095qd17zrdhqmcvmslbyzfa5sh9glvvsnsvnlz31gzsmi8nnsgim";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers control-monad-free haskeline mtl transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "High level, generic library for interrogative user interfaces";
  license = lib.licenses.bsd3;
  broken = false;
}
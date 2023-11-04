{ mkDerivation, base, containers, control-monad-free, haskeline
, lib, mtl, transformers
}:
mkDerivation {
  pname = "wizards";
  version = "1.0.3";
  sha256 = "05650d7bf6dd0e6b87d0d7da6fb003601ce5d7b1f3d69571127ec3c9425b9bb2";
  revision = "2";
  editedCabalFile = "0bnqz6slm3hr98ihhlkmivcd12bda6lf0j7l6dfdz30fl4xqpijl";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers control-monad-free haskeline mtl transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "High level, generic library for interrogative user interfaces";
  license = lib.licenses.bsd3;
  broken = false;
}
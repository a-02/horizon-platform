{ mkDerivation, base, lib, transformers }:
mkDerivation {
  pname = "monads-tf";
  version = "0.3.0.1";
  sha256 = "21bcd293bf663b6cf993600a3357da724e09c088bdb0ba792f7afc8b69fa5f02";
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
  homepage = "https://github.com/typeclasses/monads-tf";
  description = "Monad classes, using type families";
  license = lib.licenses.bsd3;
  broken = false;
}
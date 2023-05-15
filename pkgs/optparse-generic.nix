{ mkDerivation, Only, base, bytestring, lib, optparse-applicative
, text, time, transformers, transformers-compat, void
}:
mkDerivation {
  pname = "optparse-generic";
  version = "1.5.0";
  sha256 = "a566b590218e665725c4de6702cce92670acd14f6debd8e25b1223a76c2ab079";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring Only optparse-applicative text time transformers
    transformers-compat void
  ];
  executableHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Auto-generate a command-line parser for your datatype";
  license = lib.licenses.bsd3;
  broken = false;
}
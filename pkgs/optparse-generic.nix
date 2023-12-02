{ mkDerivation, Only, base, bytestring, filepath, lib
, optparse-applicative, text, time, transformers
, transformers-compat, void
}:
mkDerivation {
  pname = "optparse-generic";
  version = "1.5.2";
  sha256 = "c7b451f32d34124aab838fadaab4cf2e271e558ddc13a702458b6c790a2e8a35";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring filepath Only optparse-applicative text time
    transformers transformers-compat void
  ];
  executableHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Auto-generate a command-line parser for your datatype";
  license = lib.licenses.bsd3;
  broken = false;
}
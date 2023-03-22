{ mkDerivation, base, lib }:
mkDerivation {
  pname = "erf";
  version = "2.0.0.0";
  sha256 = "24f0b79c7e1d25cb2cd44c2258d7a464bf6db8079775b50b60b54a254616b337";
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
  description = "The error function, erf, and related functions";
  license = lib.licenses.bsd3;
  broken = false;
}
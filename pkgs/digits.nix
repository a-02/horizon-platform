{ mkDerivation, QuickCheck, base, lib }:
mkDerivation {
  pname = "digits";
  version = "0.3.1";
  sha256 = "a8499c9745dcf8a4e6c48594f555e6c6276e8d91c457dcc562a370ccadcd6a2c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base QuickCheck ];
  testHaskellDepends = [ base QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Converts integers to lists of digits and back";
  license = lib.licenses.bsd3;
  broken = false;
}
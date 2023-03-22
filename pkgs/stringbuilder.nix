{ mkDerivation, QuickCheck, base, hspec, lib }:
mkDerivation {
  pname = "stringbuilder";
  version = "0.5.1";
  sha256 = "d878bdc4da806dbce5ab684ef13d2634c17c15b991d0ed3bb25a331eba6603ba";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base hspec QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A writer monad for multi-line string literals";
  license = lib.licenses.mit;
  broken = false;
}
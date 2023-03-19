{ mkDerivation, QuickCheck, base, lib }:
mkDerivation {
  pname = "split";
  version = "0.2.3.5";
  sha256 = "bf8aa8d610354a2b576946a6c838251ec5988c8374100638e6b2604513b93159";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Combinator library for splitting lists";
  license = lib.licenses.bsd3;
  broken = false;
}
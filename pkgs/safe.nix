{ mkDerivation, QuickCheck, base, deepseq, lib }:
mkDerivation {
  pname = "safe";
  version = "0.3.19";
  sha256 = "25043442c8f8aa95955bb17467d023630632b961aaa61e807e325d9b2c33f7a2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base deepseq QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/ndmitchell/safe#readme";
  description = "Library of safe (exception free) functions";
  license = lib.licenses.bsd3;
  broken = false;
}
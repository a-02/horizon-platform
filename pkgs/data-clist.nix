{ mkDerivation, QuickCheck, base, deepseq, lib }:
mkDerivation {
  pname = "data-clist";
  version = "0.2";
  sha256 = "1c3a1ebd71e8f6fe30afdb3797c4852db7fb0b4e3c145fc53e8282eb4303b212";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq ];
  testHaskellDepends = [ base QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/sw17ch/data-clist";
  description = "Simple functional ring type";
  license = lib.licenses.bsd3;
  broken = false;
}
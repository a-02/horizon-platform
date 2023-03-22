{ mkDerivation, QuickCheck, base, deepseq, lib }:
mkDerivation {
  pname = "generic-random";
  version = "1.5.0.1";
  sha256 = "dd3451808788d99211edeac27287db5417e97234ce9221a2eb9ab02e9cfc2c0a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base QuickCheck ];
  testHaskellDepends = [ base deepseq QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/lysxia/generic-random";
  description = "Generic random generators for QuickCheck";
  license = lib.licenses.mit;
  broken = false;
}
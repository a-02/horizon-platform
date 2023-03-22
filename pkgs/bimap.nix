{ mkDerivation, QuickCheck, base, containers, deepseq, exceptions
, lib, template-haskell
}:
mkDerivation {
  pname = "bimap";
  version = "0.5.0";
  sha256 = "b0b44b0f2eaceb83f46dfa3d1747e080c45204c64d18bb9e63747299266f0c95";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers deepseq exceptions ];
  testHaskellDepends = [
    base containers deepseq exceptions QuickCheck template-haskell
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/joelwilliamson/bimap";
  description = "Bidirectional mapping between two key types";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, base, hspec, hspec-expectations, lib, megaparsec }:
mkDerivation {
  pname = "hspec-megaparsec";
  version = "2.2.1";
  sha256 = "65f4f57f96c05fce5f55e8ad6aafcf4f2e5726d95d74855a95d6779927936a2d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base hspec-expectations megaparsec ];
  testHaskellDepends = [ base hspec megaparsec ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mrkkrp/hspec-megaparsec";
  description = "Utility functions for testing Megaparsec parsers with Hspec";
  license = lib.licenses.bsd3;
  broken = false;
}
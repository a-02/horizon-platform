{ mkDerivation, base, call-stack, hspec, hspec-discover, lib
, transformers
}:
mkDerivation {
  pname = "logging-facade";
  version = "0.3.1";
  sha256 = "2b16b3353b77c6ab92a82dc3f04724447a67f02c76d50c274177d8778e14c166";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base call-stack transformers ];
  testHaskellDepends = [ base hspec ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/sol/logging-facade#readme";
  description = "Simple logging abstraction that allows multiple back-ends";
  license = lib.licenses.mit;
  broken = false;
}
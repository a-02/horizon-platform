{ mkDerivation, base, criterion, hspec, lib, text }:
mkDerivation {
  pname = "word-wrap";
  version = "0.5";
  sha256 = "f85f29ce003ca3e195ec95d49e350dfb713bf71db726270143375df2c610a744";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base text ];
  testHaskellDepends = [ base hspec ];
  benchmarkHaskellDepends = [ base criterion text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jtdaugherty/word-wrap/";
  description = "A library for word-wrapping";
  license = lib.licenses.bsd3;
  broken = false;
}
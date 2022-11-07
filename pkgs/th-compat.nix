{ mkDerivation
, base
, base-compat
, hspec
, hspec-discover
, lib
, mtl
, template-haskell
}:
mkDerivation {
  pname = "th-compat";
  version = "0.1.4";
  sha256 = "d8f97ac14ab47b6b8a7b0fdb4ff95426322ec56badd01652ac15da4a44d4bab8";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base template-haskell ];
  testHaskellDepends = [
    base
    base-compat
    hspec
    mtl
    template-haskell
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-compat/th-compat";
  description = "Backward- (and forward-)compatible Quote and Code types";
  license = lib.licenses.bsd3;
  broken = false;
}

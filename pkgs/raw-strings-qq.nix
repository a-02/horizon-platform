{ mkDerivation, HUnit, base, lib, template-haskell }:
mkDerivation {
  pname = "raw-strings-qq";
  version = "1.1";
  sha256 = "2e011ec26aeaa53ab43c30b7d9b5b0f661f24b4ebef8884c12c571353c0fbed3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base template-haskell ];
  testHaskellDepends = [ base HUnit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/23Skidoo/raw-strings-qq";
  description = "Raw string literals for Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, Cabal, base, bytestring, lib, postgresql, unix }:
mkDerivation {
  pname = "postgresql-libpq";
  version = "0.9.5.0";
  sha256 = "d1592bd805c088bb0c136c03eea92af9c1d7dbd85e32d0b6d522fd940f325470";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal ];
  libraryHaskellDepends = [ base bytestring unix ];
  librarySystemDepends = [ postgresql ];
  testHaskellDepends = [ base bytestring ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskellari/postgresql-libpq";
  description = "low-level binding to libpq";
  license = lib.licenses.bsd3;
  broken = false;
}
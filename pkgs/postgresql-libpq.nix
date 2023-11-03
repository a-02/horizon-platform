{ mkDerivation, Cabal, base, bytestring, lib, postgresql, unix }:
mkDerivation {
  pname = "postgresql-libpq";
  version = "0.10.0.0";
  sha256 = "54bca8926fafea05870437732a4d4a200558053b36f9f0867fd3689e035bdf62";
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
{ mkDerivation, base, bytestring, lib, tasty-bench, text }:
mkDerivation {
  pname = "ghc-trace-events";
  version = "0.1.2.7";
  sha256 = "515a651df3a942508a3e21f505c86b9f10ecd1b53e8c111ecf520dd95a3313bf";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring text ];
  benchmarkHaskellDepends = [ base bytestring tasty-bench ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/maoe/ghc-trace-events";
  description = "Faster traceEvent and traceMarker, and binary object logging for eventlog";
  license = lib.licenses.bsd3;
  broken = false;
}
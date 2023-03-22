{ mkDerivation, base, bytestring, lib, tasty-bench, text }:
mkDerivation {
  pname = "ghc-trace-events";
  version = "0.1.2.6";
  sha256 = "835dd379a16a39841debbe49d32222ffc0fd7ea794729168b55f9c57a5cf84f9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring text ];
  benchmarkHaskellDepends = [ base bytestring tasty-bench ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/maoe/ghc-trace-events";
  description = "Faster traceEvent and traceMarker, and binary object logging for eventlog";
  license = lib.licenses.bsd3;
  broken = false;
}
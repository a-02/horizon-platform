{ mkDerivation, Glob, base, doctest, lib }:
mkDerivation {
  pname = "co-log-core";
  version = "0.3.2.1";
  sha256 = "7e12a8e02a02c0e2c13e8def101ee8243c6c033392cd3031b63fe5db5168ff87";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base doctest Glob ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/co-log/co-log-core";
  description = "Composable Contravariant Comonadic Logging Library";
  license = lib.licenses.mpl20;
  broken = false;
}
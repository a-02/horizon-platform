{ mkDerivation, base, lib }:
mkDerivation {
  pname = "ieee754";
  version = "0.8.0";
  sha256 = "0e2dff9c37f59acf5c64f978ec320005e9830f276f9f314e4bfed3f482289ad1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/patperry/hs-ieee754";
  description = "Utilities for dealing with IEEE floating point numbers";
  license = lib.licenses.bsd3;
  broken = false;
}
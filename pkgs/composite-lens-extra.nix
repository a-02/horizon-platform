{ mkDerivation, base, composite-base, lens, lib, vinyl }:
mkDerivation {
  pname = "composite-lens-extra";
  version = "0.1.0.0";
  sha256 = "778c01cc88cd62f9302968164e76c7bd7e0642924f5f0c1a2e880c3877fc4b24";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base composite-base lens vinyl ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Extra lens functions for composite";
  license = lib.licenses.mit;
  broken = false;
}
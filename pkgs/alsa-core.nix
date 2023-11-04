{ mkDerivation, alsa-lib, base, extensible-exceptions, lib }:
mkDerivation {
  pname = "alsa-core";
  version = "0.5.0.1";
  sha256 = "eb50495ef05ecc7c06a0147da7f0d3efde832a44d23caaf5172dc114882270ab";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base extensible-exceptions ];
  libraryPkgconfigDepends = [ alsa-lib ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/haskellwiki/ALSA";
  description = "Binding to the ALSA Library API (Exceptions)";
  license = lib.licenses.bsd3;
  broken = false;
}
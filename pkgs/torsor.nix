{ mkDerivation, base, lib }:
mkDerivation {
  pname = "torsor";
  version = "0.1";
  sha256 = "75a3f53a08b9333613a16c5e98f12a069a1c1a360dc3c2abf7b47522acb06d9c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/andrewthad/torsor#readme";
  description = "Torsor Typeclass";
  license = lib.licenses.bsd3;
  broken = false;
}
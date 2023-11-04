{ mkDerivation, base, binary, lib }:
mkDerivation {
  pname = "data-binary-ieee754";
  version = "0.4.4";
  sha256 = "59975abed8f4caa602f0780c10a9b2493479e6feb71ad189bb10c3ac5678df0a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base binary ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://john-millikin.com/software/data-binary-ieee754/";
  description = "Parser/Serialiser for IEEE-754 floating-point values";
  license = lib.licenses.mit;
  broken = false;
}
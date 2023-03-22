{ mkDerivation, base, lib }:
mkDerivation {
  pname = "simple-reflect";
  version = "0.3.3";
  sha256 = "07825ea04c135298008cf080133e3bfc8e04cbacd24719c46ac6a2ca4acfdb2b";
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
  homepage = "http://twanvl.nl/blog/haskell/simple-reflection-of-expressions";
  description = "Simple reflection of expressions containing variables";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, base, lib, primitive, random, time }:
mkDerivation {
  pname = "tf-random";
  version = "0.5";
  sha256 = "2e30cec027b313c9e1794d326635d8fc5f79b6bf6e7580ab4b00186dadc88510";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base primitive random time ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "High-quality splittable pseudorandom number generator";
  license = lib.licenses.bsd3;
  broken = false;
}
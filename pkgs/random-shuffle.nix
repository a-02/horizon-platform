{ mkDerivation, MonadRandom, base, lib, random }:
mkDerivation {
  pname = "random-shuffle";
  version = "0.0.4";
  sha256 = "52704411f040fd0bf2361dad162e35dc13caa6535b2e4908d3513c00a95d0615";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base MonadRandom random ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Random shuffle implementation";
  license = lib.licenses.bsd3;
  broken = false;
}
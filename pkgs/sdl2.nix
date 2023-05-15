{ mkDerivation, SDL2, StateVar, base, bytestring, deepseq
, exceptions, lib, linear, text, transformers, vector, weigh
}:
mkDerivation {
  pname = "sdl2";
  version = "2.5.5.0";
  sha256 = "23fdaa896e528620f31afeb763422d0c27d758e587215ff0c1387d6e6b3551cd";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base bytestring exceptions linear StateVar text transformers vector
  ];
  librarySystemDepends = [ SDL2 ];
  libraryPkgconfigDepends = [ SDL2 ];
  testHaskellDepends = [ base deepseq linear vector weigh ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Both high- and low-level bindings to the SDL library (version 2.0.6+).";
  license = lib.licenses.bsd3;
  broken = false;
}
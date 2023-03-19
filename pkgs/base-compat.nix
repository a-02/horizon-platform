{ mkDerivation, base, ghc-prim, lib, unix }:
mkDerivation {
  pname = "base-compat";
  version = "0.13.0";
  sha256 = "8bf66075da849a037974a7feb9d7ecd81ce57e4522a0df40daf11db14fcea30d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ghc-prim unix ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A compatibility layer for base";
  license = lib.licenses.mit;
  broken = false;
}
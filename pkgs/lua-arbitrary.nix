{ mkDerivation, QuickCheck, base, lib, lua }:
mkDerivation {
  pname = "lua-arbitrary";
  version = "1.0.1.1";
  sha256 = "d5f6143d9c99d44453fff535b912ad0d7ce8cb5500b1d9dc47947952e2637b4d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base lua QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hslua.org/";
  description = "Arbitrary instances for Lua types";
  license = lib.licenses.mit;
  broken = false;
}
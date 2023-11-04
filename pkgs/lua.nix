{ mkDerivation, base, lib, lua5_4, tasty, tasty-hunit }:
mkDerivation {
  pname = "lua";
  version = "2.3.1";
  sha256 = "b92515811f6b1400a39d517e1aa95e406aa45cd11aa5cc6a4db65dd76f1fc753";
  configureFlags = [ "-fsystem-lua" "-f-use-pkgconfig" ];
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  librarySystemDepends = [ lua5_4 ];
  testHaskellDepends = [ base tasty tasty-hunit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hslua.org/";
  description = "Lua, an embeddable scripting language";
  license = lib.licenses.mit;
  broken = false;
}
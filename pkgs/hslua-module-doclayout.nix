{ mkDerivation, base, doclayout, hslua, lib, tasty, tasty-hunit
, tasty-lua, text
}:
mkDerivation {
  pname = "hslua-module-doclayout";
  version = "1.1.0";
  sha256 = "61b204944a74b64ff3d98582071c9ed56778f730e14f29d34a40a3003ff5c4d0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base doclayout hslua text ];
  testHaskellDepends = [
    base doclayout hslua tasty tasty-hunit tasty-lua text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hslua/hslua-module-doclayout";
  description = "Lua module wrapping Text.DocLayout.";
  license = lib.licenses.mit;
  broken = false;
}
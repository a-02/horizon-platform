{ mkDerivation
, base
, doclayout
, hslua
, lib
, tasty
, tasty-hunit
, tasty-lua
, text
}:
mkDerivation {
  pname = "hslua-module-doclayout";
  version = "1.0.4";
  sha256 = "1843532ca0721a728e38edbdefd1a5f8155b03a1612149e6d919c2cc9e735893";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base doclayout hslua text ];
  testHaskellDepends = [
    base
    doclayout
    hslua
    tasty
    tasty-hunit
    tasty-lua
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hslua/hslua-module-doclayout";
  description = "Lua module wrapping Text.DocLayout.";
  license = lib.licenses.mit;
  broken = false;
}

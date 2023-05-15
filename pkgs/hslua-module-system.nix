{ mkDerivation, base, directory, exceptions, hslua-core
, hslua-marshalling, hslua-packaging, lib, tasty, tasty-hunit
, tasty-lua, temporary, text
}:
mkDerivation {
  pname = "hslua-module-system";
  version = "1.1.0.1";
  sha256 = "06c866e44805bfc7fb04de308a52ae81f2b5da483de176686c784172fdc30ae5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base directory exceptions hslua-core hslua-marshalling
    hslua-packaging temporary text
  ];
  testHaskellDepends = [
    base hslua-core hslua-packaging tasty tasty-hunit tasty-lua text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hslua/hslua";
  description = "Lua module wrapper around Haskell's System module";
  license = lib.licenses.mit;
  broken = false;
}
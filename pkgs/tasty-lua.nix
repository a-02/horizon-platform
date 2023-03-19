{ mkDerivation, QuickCheck, base, bytestring, directory, file-embed
, filepath, hslua-core, hslua-marshalling, lib, lua-arbitrary
, tasty, tasty-hunit, text
}:
mkDerivation {
  pname = "tasty-lua";
  version = "1.1.0";
  sha256 = "33434b2a41080120886be023d43d1b52b18367fecc8693f4e5d06d28c855c7ae";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring file-embed hslua-core hslua-marshalling
    lua-arbitrary QuickCheck tasty text
  ];
  testHaskellDepends = [
    base bytestring directory filepath hslua-core hslua-marshalling
    lua-arbitrary QuickCheck tasty tasty-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hslua/hslua";
  description = "Write tests in Lua, integrate into tasty";
  license = lib.licenses.mit;
  broken = false;
}
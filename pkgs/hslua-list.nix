{ mkDerivation, base, bytestring, hslua-core, lib, tasty, tasty-lua
}:
mkDerivation {
  pname = "hslua-list";
  version = "1.1.1";
  sha256 = "368df8ca23b3f83acf84db5044337d026642b6d99e315f2f46a9e079f7cee05c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring hslua-core ];
  testHaskellDepends = [ base hslua-core tasty tasty-lua ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hslua.org/";
  description = "Opinionated, but extensible Lua list type";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation, async, base, lib, mtl, tasty, tasty-hunit
, transformers
}:
mkDerivation {
  pname = "logict";
  version = "0.8.1.0";
  sha256 = "d3dc47581c8484220e57c8f827e0d44f8c04f054aba9ba1797ee15b897e3b813";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base mtl transformers ];
  testHaskellDepends = [
    async base mtl tasty tasty-hunit transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Bodigrim/logict#readme";
  description = "A backtracking logic-programming monad";
  license = lib.licenses.bsd3;
  broken = false;
}
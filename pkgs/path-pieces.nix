{ mkDerivation, HUnit, QuickCheck, base, hspec, lib, text, time }:
mkDerivation {
  pname = "path-pieces";
  version = "0.2.1";
  sha256 = "080bd49f53e20597ca3e5962e0c279a3422345f5b088840a30a751cd76d4a36f";
  revision = "1";
  editedCabalFile = "0p7wsphh513s8l5d62lzgbhk2l1h6kj5y7bc27qqjsry9g8ah4y7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base text time ];
  testHaskellDepends = [ base hspec HUnit QuickCheck text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Components of paths";
  license = lib.licenses.bsd3;
  broken = false;
}
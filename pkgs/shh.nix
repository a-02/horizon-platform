{ mkDerivation, Cabal, PyF, async, base, bytestring, cabal-doctest
, containers, deepseq, directory, doctest, filepath, lib
, markdown-unlit, mtl, process, split, stringsearch, tasty
, tasty-hunit, tasty-quickcheck, template-haskell, temporary, unix
, utf8-string
}:
mkDerivation {
  pname = "shh";
  version = "0.7.2.2";
  sha256 = "919a6708671820d8adb9c89347aba33bf81b80041bcd4470bc6212c78b5122f8";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    async base bytestring containers deepseq directory filepath mtl
    process split stringsearch template-haskell unix utf8-string
  ];
  executableHaskellDepends = [
    async base bytestring deepseq directory temporary unix
  ];
  testHaskellDepends = [
    async base bytestring directory doctest filepath PyF tasty
    tasty-hunit tasty-quickcheck utf8-string
  ];
  testToolDepends = [ markdown-unlit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Simple shell scripting from Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
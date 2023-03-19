{ mkDerivation, Cabal, PyF, async, base, bytestring, cabal-doctest
, containers, deepseq, directory, doctest, filepath, lib
, markdown-unlit, mtl, process, split, stringsearch, tasty
, tasty-hunit, tasty-quickcheck, template-haskell, temporary, unix
, utf8-string
}:
mkDerivation {
  pname = "shh";
  version = "0.7.2.1";
  sha256 = "dbdaa98e8f5714e4d7bc6234d2e9371c3b613219febd529f323ccd560fc086dc";
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
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Simple shell scripting from Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
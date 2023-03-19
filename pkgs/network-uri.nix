{ mkDerivation, HUnit, QuickCheck, base, criterion, deepseq, lib
, parsec, tasty, tasty-hunit, tasty-quickcheck, template-haskell
, th-compat
}:
mkDerivation {
  pname = "network-uri";
  version = "2.6.4.2";
  sha256 = "9c188973126e893250b881f20e8811dca06c223c23402b06f7a1f2e995797228";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base deepseq parsec template-haskell th-compat
  ];
  testHaskellDepends = [
    base HUnit QuickCheck tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base criterion deepseq HUnit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/network-uri";
  description = "URI manipulation";
  license = lib.licenses.bsd3;
  broken = false;
}
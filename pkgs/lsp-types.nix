{ mkDerivation, Diff, QuickCheck, aeson, base, binary, containers
, data-default, deepseq, dlist, exceptions, filepath, hashable
, hspec, hspec-discover, lens, lib, mod, mtl, network-uri
, quickcheck-instances, safe, scientific, some, template-haskell
, text, tuple, unordered-containers
}:
mkDerivation {
  pname = "lsp-types";
  version = "1.6.0.0";
  sha256 = "385dc4fb3c7fcdb5c6cb26cf9f589b879cdb28dc7a452a6dc628dec369c19802";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base binary containers data-default deepseq Diff dlist
    exceptions filepath hashable lens mod mtl network-uri safe
    scientific some template-haskell text unordered-containers
  ];
  testHaskellDepends = [
    aeson base filepath hspec lens network-uri QuickCheck
    quickcheck-instances text tuple
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/lsp";
  description = "Haskell library for the Microsoft Language Server Protocol, data types";
  license = lib.licenses.mit;
  broken = false;
}
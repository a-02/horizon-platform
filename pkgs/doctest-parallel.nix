{ mkDerivation, Cabal, Glob, HUnit, QuickCheck, base, base-compat
, code-page, containers, deepseq, directory, exceptions, filepath
, ghc, ghc-paths, hspec, hspec-core, lib, mockery, process, random
, setenv, silently, stringbuilder, syb, template-haskell
, transformers, unordered-containers
}:
mkDerivation {
  pname = "doctest-parallel";
  version = "0.3.0.1";
  sha256 = "21a8c51254b9f95420925812b17b759cadff2c05e1580abb7b885028fa745f9d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base-compat Cabal code-page containers deepseq directory
    exceptions filepath ghc ghc-paths Glob process random syb
    template-haskell transformers unordered-containers
  ];
  testHaskellDepends = [
    base base-compat code-page containers deepseq directory exceptions
    filepath ghc ghc-paths hspec hspec-core HUnit mockery process
    QuickCheck setenv silently stringbuilder syb transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/martijnbastiaan/doctest-parallel#readme";
  description = "Test interactive Haskell examples";
  license = lib.licenses.mit;
  broken = false;
}
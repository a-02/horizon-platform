{ mkDerivation, HUnit, QuickCheck, ansi-terminal, array, base
, base-orphans, call-stack, deepseq, directory, filepath
, haskell-lexer, hspec-expectations, hspec-meta, lib, process
, quickcheck-io, random, setenv, silently, stm, temporary
, tf-random, time, transformers
}:
mkDerivation {
  pname = "hspec-core";
  version = "2.10.10";
  sha256 = "644793717f2f9ee7f778e2f801ea54705bdd0abb71d7a7e40aa75bd98b8f55b6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal array base call-stack deepseq directory filepath
    haskell-lexer hspec-expectations HUnit process QuickCheck
    quickcheck-io random setenv stm tf-random time transformers
  ];
  testHaskellDepends = [
    ansi-terminal array base base-orphans call-stack deepseq directory
    filepath haskell-lexer hspec-expectations hspec-meta HUnit process
    QuickCheck quickcheck-io random setenv silently stm temporary
    tf-random time transformers
  ];
  testToolDepends = [ hspec-meta ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  testTarget = "--test-option=--skip --test-option='Test.Hspec.Core.Runner.hspecResult runs specs in parallel'";
  homepage = "https://hspec.github.io/";
  description = "A Testing Framework for Haskell";
  license = lib.licenses.mit;
  broken = false;
}
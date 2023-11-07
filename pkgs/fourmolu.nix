{ mkDerivation, Cabal-syntax, Diff, MemoTrie, QuickCheck, aeson
, ansi-terminal, array, base, binary, bytestring, containers
, deepseq, directory, file-embed, filepath, ghc-lib-parser, hspec
, hspec-discover, hspec-megaparsec, lib, megaparsec, mtl
, optparse-applicative, path, path-io, pretty, process, scientific
, syb, temporary, text, th-env, yaml
}:
mkDerivation {
  pname = "fourmolu";
  version = "0.14.0.0";
  sha256 = "dae73c2dfa5039d1a3ad06e85c7836a2b45fe5d41d90fb98ac7b4c4507ffdad6";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson ansi-terminal array base binary bytestring Cabal-syntax
    containers deepseq Diff directory file-embed filepath
    ghc-lib-parser megaparsec MemoTrie mtl scientific syb text yaml
  ];
  executableHaskellDepends = [
    base Cabal-syntax containers directory filepath ghc-lib-parser
    optparse-applicative text th-env yaml
  ];
  testHaskellDepends = [
    base bytestring Cabal-syntax containers Diff directory filepath
    ghc-lib-parser hspec hspec-megaparsec megaparsec path path-io
    pretty process QuickCheck temporary text yaml
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fourmolu/fourmolu";
  description = "A formatter for Haskell source code";
  license = lib.licenses.bsd3;
  broken = false;
}
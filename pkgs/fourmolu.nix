{ mkDerivation
, Cabal-syntax
, Diff
, MemoTrie
, QuickCheck
, aeson
, ansi-terminal
, array
, base
, bytestring
, containers
, directory
, dlist
, exceptions
, filepath
, ghc-lib-parser
, gitrev
, hspec
, hspec-discover
, hspec-megaparsec
, lib
, megaparsec
, mtl
, optparse-applicative
, path
, path-io
, pretty
, process
, syb
, template-haskell
, temporary
, text
, th-lift-instances
, yaml
}:
mkDerivation {
  pname = "fourmolu";
  version = "0.10.1.0";
  sha256 = "e442b4aa21c320994c57f0c87bb7e6bf005207a167cb7e812c5142e4b8687f3e";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    ansi-terminal
    array
    base
    bytestring
    Cabal-syntax
    containers
    Diff
    directory
    dlist
    exceptions
    filepath
    ghc-lib-parser
    megaparsec
    MemoTrie
    mtl
    syb
    template-haskell
    text
    th-lift-instances
    yaml
  ];
  executableHaskellDepends = [
    base
    containers
    directory
    filepath
    ghc-lib-parser
    gitrev
    optparse-applicative
    text
    yaml
  ];
  testHaskellDepends = [
    base
    containers
    Diff
    directory
    filepath
    ghc-lib-parser
    hspec
    hspec-megaparsec
    megaparsec
    path
    path-io
    pretty
    process
    QuickCheck
    temporary
    text
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fourmolu/fourmolu";
  description = "A formatter for Haskell source code";
  license = lib.licenses.bsd3;
  broken = false;
}

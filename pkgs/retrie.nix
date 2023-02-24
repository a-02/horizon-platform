{ mkDerivation
, HUnit
, ansi-terminal
, async
, base
, bytestring
, containers
, data-default
, deepseq
, directory
, exceptions
, filepath
, ghc
, ghc-exactprint
, ghc-paths
, haskell-src-exts
, lib
, list-t
, mtl
, optparse-applicative
, process
, random-shuffle
, syb
, tasty
, tasty-hunit
, temporary
, text
, transformers
, unordered-containers
}:
mkDerivation {
  pname = "retrie";
  version = "1.2.1.1";
  sha256 = "74abc7b1968df4455cd104338a81a38f3db89ac963c8fd918f5c5273db14bfab";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal
    async
    base
    bytestring
    containers
    data-default
    directory
    filepath
    ghc
    ghc-exactprint
    list-t
    mtl
    optparse-applicative
    process
    random-shuffle
    syb
    text
    transformers
    unordered-containers
  ];
  executableHaskellDepends = [ base ghc-paths haskell-src-exts ];
  testHaskellDepends = [
    base
    containers
    data-default
    deepseq
    directory
    exceptions
    filepath
    ghc
    ghc-exactprint
    ghc-paths
    haskell-src-exts
    HUnit
    mtl
    optparse-applicative
    process
    syb
    tasty
    tasty-hunit
    temporary
    text
    unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/facebookincubator/retrie";
  description = "A powerful, easy-to-use codemodding tool for Haskell";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation, Diff, Glob, QuickCheck, aeson, array, async, base
, base16-bytestring, binary, bytestring, case-insensitive
, co-log-core, containers, cryptohash-sha1, data-default, deepseq
, dependent-map, dependent-sum, directory, dlist, enummapset
, exceptions, extra, filepath, fingertree, focus, fuzzy, ghc
, ghc-boot, ghc-boot-th, ghc-check, ghc-paths, ghc-trace-events
, gitrev, haddock-library, hashable, hie-bios, hie-compat, hiedb
, hls-graph, hls-plugin-api, implicit-hie, implicit-hie-cradle
, lens, lib, list-t, lsp, lsp-test, lsp-types, monoid-subclasses
, mtl, network-uri, opentelemetry, optparse-applicative, parallel
, prettyprinter, prettyprinter-ansi-terminal, random, regex-tdfa
, row-types, safe-exceptions, shake, sorted-list, sqlite-simple
, stm, stm-containers, syb, tasty, tasty-expected-failure
, tasty-hunit, tasty-quickcheck, tasty-rerun, text, text-rope, time
, transformers, unix, unliftio, unliftio-core, unordered-containers
, vector
}:
mkDerivation {
  pname = "ghcide";
  version = "2.4.0.0";
  sha256 = "6675ef6543b2e2f16fb3096fc7c2047d5cbe910c70abcb3ccd79faca4bea4cdf";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson array async base base16-bytestring binary bytestring
    case-insensitive co-log-core containers cryptohash-sha1
    data-default deepseq dependent-map dependent-sum Diff directory
    dlist enummapset exceptions extra filepath fingertree focus ghc
    ghc-boot ghc-boot-th ghc-check ghc-paths ghc-trace-events Glob
    haddock-library hashable hie-bios hie-compat hiedb hls-graph
    hls-plugin-api implicit-hie implicit-hie-cradle lens list-t lsp
    lsp-types mtl opentelemetry optparse-applicative parallel
    prettyprinter prettyprinter-ansi-terminal random regex-tdfa
    row-types safe-exceptions sorted-list sqlite-simple stm
    stm-containers syb text text-rope time transformers unix unliftio
    unliftio-core unordered-containers vector
  ];
  executableHaskellDepends = [
    base data-default extra gitrev hls-plugin-api lsp lsp-types
    optparse-applicative
  ];
  testHaskellDepends = [
    aeson async base containers data-default directory extra filepath
    fuzzy ghc hls-plugin-api lens list-t lsp lsp-test lsp-types
    monoid-subclasses mtl network-uri QuickCheck random regex-tdfa
    row-types shake sqlite-simple stm stm-containers tasty
    tasty-expected-failure tasty-hunit tasty-quickcheck tasty-rerun
    text text-rope unordered-containers
  ];
  testToolDepends = [ implicit-hie ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/haskell-language-server/tree/master/ghcide#readme";
  description = "The core of an IDE";
  license = lib.licenses.asl20;
  broken = false;
}
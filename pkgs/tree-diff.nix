{ mkDerivation, Diff, QuickCheck, aeson, ansi-terminal
, ansi-wl-pprint, base, base-compat, bytestring, bytestring-builder
, containers, criterion, deepseq, hashable, lib, parsec, parsers
, pretty, primitive, scientific, semialign, strict, tagged, tasty
, tasty-golden, tasty-quickcheck, text, these, time, trifecta
, unordered-containers, uuid-types, vector
}:
mkDerivation {
  pname = "tree-diff";
  version = "0.3.0.1";
  sha256 = "40e67c9f7f21850f17ecc96ef983d833284626bbe3f43f2e8a0877ace9d472ae";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson ansi-terminal ansi-wl-pprint base base-compat bytestring
    bytestring-builder containers deepseq hashable parsec parsers
    pretty primitive QuickCheck scientific semialign strict tagged text
    these time unordered-containers uuid-types vector
  ];
  testHaskellDepends = [
    ansi-terminal ansi-wl-pprint base base-compat parsec primitive
    QuickCheck tagged tasty tasty-golden tasty-quickcheck trifecta
    unordered-containers
  ];
  benchmarkHaskellDepends = [ base criterion deepseq Diff ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/tree-diff";
  description = "Diffing of (expression) trees";
  license = lib.licenses.gpl2Plus;
  broken = false;
}
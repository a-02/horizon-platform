{ mkDerivation, Diff, QuickCheck, aeson, ansi-terminal
, ansi-wl-pprint, base, base-compat, bytestring, bytestring-builder
, containers, criterion, deepseq, hashable, lib, parsec, parsers
, pretty, primitive, scientific, semialign, strict, tagged, tasty
, tasty-golden, tasty-quickcheck, text, these, time, trifecta
, unordered-containers, uuid-types, vector
}:
mkDerivation {
  pname = "tree-diff";
  version = "0.3";
  sha256 = "a1c05636cedf521bc2e2898f0668fc7264f3396f5484be6ec6a8b9b2e5c11c8b";
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
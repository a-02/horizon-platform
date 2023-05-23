{ mkDerivation, HUnit, base, base-orphans, comonad, containers
, data-fix, free, lib, template-haskell, th-abstraction
, transformers
}:
mkDerivation {
  pname = "recursion-schemes";
  version = "5.2.2.4";
  sha256 = "0c151bc90a9a28bab2beced0e450103e102f754ddfebb8f924fc8a3b11c4db43";
  revision = "2";
  editedCabalFile = "1617jz77d4f2hf54jfz30zbf18rcgl6h0nzn3rcl0gjxjavf5aq6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base-orphans comonad containers data-fix free template-haskell
    th-abstraction transformers
  ];
  testHaskellDepends = [ base HUnit template-haskell transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/recursion-schemes/";
  description = "Representing common recursion patterns as higher-order functions";
  license = lib.licenses.bsd2;
  broken = false;
}
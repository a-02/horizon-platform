{ mkDerivation, Diff, OneTuple, QuickCheck, attoparsec, base
, base-compat, base-compat-batteries, base-orphans
, base16-bytestring, bytestring, containers, data-fix, deepseq
, directory, dlist, exceptions, filepath, generic-deriving
, generically, ghc-prim, hashable, indexed-traversable
, integer-logarithms, lib, primitive, quickcheck-instances
, scientific, semialign, strict, tagged, tasty, tasty-golden
, tasty-hunit, tasty-quickcheck, template-haskell, text, text-short
, th-abstraction, these, time, time-compat, unordered-containers
, uuid-types, vector, witherable
}:
mkDerivation {
  pname = "aeson";
  version = "2.1.2.1";
  sha256 = "5d4042b903ce181ee023bbf908f37a3f55e820c5f0df102683b87f963e3522c6";
  revision = "2";
  editedCabalFile = "16ykqg5051pbqrqx0gp3zb3gvfgl5sm3wdnym9y6gv7mg525jkn8";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec base base-compat-batteries bytestring containers
    data-fix deepseq dlist exceptions generically ghc-prim hashable
    indexed-traversable OneTuple primitive QuickCheck scientific
    semialign strict tagged template-haskell text text-short
    th-abstraction these time time-compat unordered-containers
    uuid-types vector witherable
  ];
  testHaskellDepends = [
    attoparsec base base-compat base-orphans base16-bytestring
    bytestring containers data-fix Diff directory dlist filepath
    generic-deriving generically ghc-prim hashable indexed-traversable
    integer-logarithms OneTuple primitive QuickCheck
    quickcheck-instances scientific strict tagged tasty tasty-golden
    tasty-hunit tasty-quickcheck template-haskell text text-short these
    time time-compat unordered-containers uuid-types vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/aeson";
  description = "Fast JSON parsing and encoding";
  license = lib.licenses.bsd3;
  broken = false;
}
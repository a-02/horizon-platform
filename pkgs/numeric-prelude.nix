{ mkDerivation, QuickCheck, array, base, containers, deepseq
, doctest-exitcode-stdio, doctest-lib, lib, non-negative, parsec
, random, semigroups, storable-record, utility-ht
}:
mkDerivation {
  pname = "numeric-prelude";
  version = "0.4.4";
  sha256 = "5a32f6b4dab913c68db30acc2e70e41e4b8f9fb00d25407ed4b0e4ae85cfa613";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base containers deepseq non-negative parsec QuickCheck random
    semigroups storable-record utility-ht
  ];
  testHaskellDepends = [
    base doctest-exitcode-stdio doctest-lib QuickCheck random
    utility-ht
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/haskellwiki/Numeric_Prelude";
  description = "An experimental alternative hierarchy of numeric type classes";
  license = lib.licenses.bsd3;
  broken = false;
}
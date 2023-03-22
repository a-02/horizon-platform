{ mkDerivation, Glob, QuickCheck, base, criterion, deepseq, doctest
, exact-pi, hspec, hspec-discover, ieee754, lib, numtype-dk
, template-haskell, vector
}:
mkDerivation {
  pname = "dimensional";
  version = "1.5";
  sha256 = "da9ad59b8feebbc038f824bc960a099fc5ccc8cb1d234f12c230044be906a599";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base deepseq exact-pi ieee754 numtype-dk vector
  ];
  testHaskellDepends = [
    base doctest Glob hspec QuickCheck template-haskell
  ];
  testToolDepends = [ hspec-discover ];
  benchmarkHaskellDepends = [ base criterion deepseq ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/bjornbm/dimensional/";
  description = "Statically checked physical dimensions";
  license = lib.licenses.bsd3;
  broken = false;
}
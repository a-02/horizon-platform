{ mkDerivation, QuickCheck, base, bifunctors, lib, mtl, profunctors
, semigroupoids, test-framework, test-framework-quickcheck2
}:
mkDerivation {
  pname = "either";
  version = "5.0.2";
  sha256 = "bfa45b967fd77b1c7c952e156377441e3c42b6dc873ab1f06a7421a3222287be";
  revision = "1";
  editedCabalFile = "1w2rxrj0gc3a7p74pybji8yy2zsjnhxyi4zhlmx4qsyz6w616ggv";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bifunctors mtl profunctors semigroupoids
  ];
  testHaskellDepends = [
    base QuickCheck test-framework test-framework-quickcheck2
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/either/";
  description = "Combinators for working with sums";
  license = lib.licenses.bsd3;
  broken = false;
}
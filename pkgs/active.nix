{ mkDerivation, QuickCheck, base, lens, lib, linear, semigroupoids
, semigroups, vector
}:
mkDerivation {
  pname = "active";
  version = "0.2.0.17";
  sha256 = "0e804cbcf8c10cf95e8a21b8a1caf6cb526f64519399fb4fbbdfc8bcb2ca57f8";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base lens linear semigroupoids semigroups vector
  ];
  testHaskellDepends = [ base linear QuickCheck semigroups ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Abstractions for animation";
  license = lib.licenses.bsd3;
  broken = false;
}
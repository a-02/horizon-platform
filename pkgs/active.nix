{ mkDerivation, QuickCheck, base, lens, lib, linear, semigroupoids
, semigroups, vector
}:
mkDerivation {
  pname = "active";
  version = "0.2.0.18";
  sha256 = "1697c4757ac69a8881fecd1e985d54887e74175370210dafb828f4419c67c3ba";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base lens linear semigroupoids semigroups vector
  ];
  testHaskellDepends = [ base linear QuickCheck semigroups ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Abstractions for animation";
  license = lib.licenses.bsd3;
  broken = false;
}
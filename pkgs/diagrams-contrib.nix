{ mkDerivation, HUnit, MonadRandom, QuickCheck, base
, circle-packing, colour, containers, cubicbezier, data-default
, data-default-class, diagrams-core, diagrams-lib, diagrams-solve
, force-layout, hashable, lens, lib, linear, mfsolve, monoid-extras
, mtl, mtl-compat, parsec, random, semigroups, split
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text
}:
mkDerivation {
  pname = "diagrams-contrib";
  version = "1.4.5.1";
  sha256 = "cbb799ac8c46e2c3ad7af1f70d62e12838148a833ba3ec9f168bdd53d3151772";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base circle-packing colour containers cubicbezier data-default
    data-default-class diagrams-core diagrams-lib diagrams-solve
    force-layout hashable lens linear mfsolve MonadRandom monoid-extras
    mtl mtl-compat parsec random semigroups split text
  ];
  testHaskellDepends = [
    base containers diagrams-lib HUnit QuickCheck test-framework
    test-framework-hunit test-framework-quickcheck2
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://diagrams.github.io/";
  description = "Collection of user contributions to diagrams EDSL";
  license = lib.licenses.bsd3;
  broken = false;
}
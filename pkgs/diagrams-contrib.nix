{ mkDerivation
, HUnit
, MonadRandom
, QuickCheck
, base
, circle-packing
, colour
, containers
, cubicbezier
, data-default
, data-default-class
, diagrams-core
, diagrams-lib
, diagrams-solve
, force-layout
, hashable
, lens
, lib
, linear
, mfsolve
, monoid-extras
, mtl
, mtl-compat
, parsec
, random
, semigroups
, split
, test-framework
, test-framework-hunit
, test-framework-quickcheck2
, text
}:
mkDerivation {
  pname = "diagrams-contrib";
  version = "1.4.5";
  sha256 = "900baf9c40a36b637400bb58dbab260d3b654a1249809153c4fdd6ec2152286c";
  revision = "1";
  editedCabalFile = "0i5s9mr88kc68v2wc07jpdy2hzqh2gc1dsawvb2sracnqmv9q658";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    circle-packing
    colour
    containers
    cubicbezier
    data-default
    data-default-class
    diagrams-core
    diagrams-lib
    diagrams-solve
    force-layout
    hashable
    lens
    linear
    mfsolve
    MonadRandom
    monoid-extras
    mtl
    mtl-compat
    parsec
    random
    semigroups
    split
    text
  ];
  testHaskellDepends = [
    base
    containers
    diagrams-lib
    HUnit
    QuickCheck
    test-framework
    test-framework-hunit
    test-framework-quickcheck2
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://diagrams.github.io/";
  description = "Collection of user contributions to diagrams EDSL";
  license = lib.licenses.bsd3;
  broken = false;
}

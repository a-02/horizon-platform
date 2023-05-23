{ mkDerivation, QuickCheck, base, lib, monoid-extras, semigroups
, testing-feat
}:
mkDerivation {
  pname = "dual-tree";
  version = "0.2.3.1";
  sha256 = "d0394b94c312a5ae032ee72d811400e3f435138ea05f7be6a4d019131a19d5a6";
  revision = "1";
  editedCabalFile = "0prbgzh1bhgrg6qxp5l2m33f5xcjjjpzbm32xx2rgyi4w1yf3587";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base monoid-extras semigroups ];
  testHaskellDepends = [
    base monoid-extras QuickCheck semigroups testing-feat
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Rose trees with cached and accumulating monoidal annotations";
  license = lib.licenses.bsd3;
  broken = false;
}
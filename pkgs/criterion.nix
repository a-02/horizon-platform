{ mkDerivation, Glob, HUnit, QuickCheck, aeson, ansi-wl-pprint
, base, base-compat, base-compat-batteries, binary, binary-orphans
, bytestring, cassava, code-page, containers, criterion-measurement
, deepseq, directory, exceptions, filepath, js-chart, lib
, microstache, mtl, mwc-random, optparse-applicative, parsec
, statistics, tasty, tasty-hunit, tasty-quickcheck, text, time
, transformers, transformers-compat, vector, vector-algorithms
}:
mkDerivation {
  pname = "criterion";
  version = "1.6.0.0";
  sha256 = "4029ef9ccd158e995a97827bb50d189a98a0875ea4b73300276fac1510a252b0";
  revision = "1";
  editedCabalFile = "1sq1izskw1j1dxrdak8zxv22q3cvxg7s9wvxx3l2gj0165xj83bc";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson ansi-wl-pprint base base-compat-batteries binary
    binary-orphans bytestring cassava code-page containers
    criterion-measurement deepseq directory exceptions filepath Glob
    js-chart microstache mtl mwc-random optparse-applicative parsec
    statistics text time transformers transformers-compat vector
    vector-algorithms
  ];
  executableHaskellDepends = [
    base base-compat-batteries optparse-applicative
  ];
  testHaskellDepends = [
    aeson base base-compat base-compat-batteries bytestring deepseq
    directory HUnit QuickCheck statistics tasty tasty-hunit
    tasty-quickcheck vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.serpentine.com/criterion";
  description = "Robust, reliable performance measurement and analysis";
  license = lib.licenses.bsd3;
  broken = false;
}
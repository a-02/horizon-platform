{ mkDerivation, QuickCheck, base, criterion, exceptions, lib
, mmorph, mtl, optparse-applicative, test-framework
, test-framework-quickcheck2, transformers, void
}:
mkDerivation {
  pname = "pipes";
  version = "4.3.16";
  sha256 = "f4e16ecf010fd681a56e6216ab1bd429f3c9bc962ec032e32cfd23e374e97498";
  revision = "6";
  editedCabalFile = "16s8a1ijakhsk73ny2vrw6a8r2dszgncd0wk735ii6csg3l2c9pm";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base exceptions mmorph mtl transformers void
  ];
  testHaskellDepends = [
    base mtl QuickCheck test-framework test-framework-quickcheck2
    transformers
  ];
  benchmarkHaskellDepends = [
    base criterion mtl optparse-applicative transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Compositional pipelines";
  license = lib.licenses.bsd3;
  broken = false;
}
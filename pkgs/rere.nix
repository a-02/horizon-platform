{ mkDerivation, QuickCheck, aeson, attoparsec, base, bytestring
, clock, containers, criterion, derp, fin, lib, parsec
, quickcheck-instances, tasty, tasty-quickcheck, transformers, vec
}:
mkDerivation {
  pname = "rere";
  version = "0.2";
  sha256 = "99fa400d5f3392fae6037c65e9cbf09cee837f753181f4fbf5f7f2ca20750969";
  revision = "2";
  editedCabalFile = "1gbf04s2rjs8kn1g28kd5qm8rvq6fdna88l1plw67q19v9rkxidp";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers fin parsec QuickCheck transformers vec
  ];
  testHaskellDepends = [
    base containers QuickCheck quickcheck-instances tasty
    tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    aeson attoparsec base bytestring clock containers criterion derp
    fin parsec vec
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Regular-expressions extended with fixpoints for context-free powers";
  license = lib.licenses.bsd3;
  broken = false;
}
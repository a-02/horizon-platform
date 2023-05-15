{ mkDerivation, QuickCheck, base, doctest-exitcode-stdio
, doctest-lib, lib
}:
mkDerivation {
  pname = "utility-ht";
  version = "0.0.17";
  sha256 = "62418aee068bd0f9bd2caa135e2307fd246b7dd53015c9dcbe7a17dcb6f19a98";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [
    base doctest-exitcode-stdio doctest-lib QuickCheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Various small helper functions for Lists, Maybes, Tuples, Functions";
  license = lib.licenses.bsd3;
  broken = false;
}
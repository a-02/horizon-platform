{ mkDerivation, QuickCheck, base, doctest-exitcode-stdio
, doctest-lib, lib
}:
mkDerivation {
  pname = "utility-ht";
  version = "0.0.16";
  sha256 = "bce53223bb77643222331efec5d69a656c0fa2d11be6563e27bc4808a1abbb81";
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
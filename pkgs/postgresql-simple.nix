{ mkDerivation, HUnit, Only, aeson, attoparsec, base
, base16-bytestring, bytestring, bytestring-builder
, case-insensitive, containers, cryptohash-md5, filepath, hashable
, inspection-testing, lib, postgresql-libpq, scientific, tasty
, tasty-golden, tasty-hunit, template-haskell, text, time-compat
, transformers, uuid-types, vector
}:
mkDerivation {
  pname = "postgresql-simple";
  version = "0.6.5";
  sha256 = "fda53ab2a72bbe402947526ccb02f9928563eae03e0832bb871c00912e455e96";
  revision = "1";
  editedCabalFile = "0yiqbac742vyhnd9kz390amkfa1dshqm76hf9nsam27cq7h7m7i5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson attoparsec base bytestring bytestring-builder
    case-insensitive containers hashable Only postgresql-libpq
    scientific template-haskell text time-compat transformers
    uuid-types vector
  ];
  testHaskellDepends = [
    aeson base base16-bytestring bytestring case-insensitive containers
    cryptohash-md5 filepath HUnit inspection-testing postgresql-libpq
    tasty tasty-golden tasty-hunit text time-compat vector
  ];
  benchmarkHaskellDepends = [ base vector ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Mid-Level PostgreSQL client library";
  license = lib.licenses.bsd3;
  broken = false;
}
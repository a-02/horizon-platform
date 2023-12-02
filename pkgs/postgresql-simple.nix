{ mkDerivation, HUnit, Only, aeson, attoparsec, base
, base16-bytestring, bytestring, case-insensitive, containers
, cryptohash-md5, filepath, hashable, inspection-testing, lib
, postgresql-libpq, scientific, tasty, tasty-golden, tasty-hunit
, template-haskell, text, time-compat, transformers, uuid-types
, vector
}:
mkDerivation {
  pname = "postgresql-simple";
  version = "0.7.0.0";
  sha256 = "8cb81bb55100715e590d3215d0f0eb6f6c39cc070c070ab621b00cfcc5e4a13e";
  revision = "1";
  editedCabalFile = "0yhggx06wbg57psqa8sswf85qfzy8ndssv13vwmxj0gc1ca1zv4l";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson attoparsec base bytestring case-insensitive containers
    hashable Only postgresql-libpq scientific template-haskell text
    time-compat transformers uuid-types vector
  ];
  testHaskellDepends = [
    aeson base base16-bytestring bytestring case-insensitive containers
    cryptohash-md5 filepath HUnit inspection-testing postgresql-libpq
    tasty tasty-golden tasty-hunit text time-compat vector
  ];
  benchmarkHaskellDepends = [ base vector ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Mid-Level PostgreSQL client library";
  license = lib.licenses.bsd3;
  broken = false;
}
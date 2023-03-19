{ mkDerivation, HUnit, QuickCheck, aeson, attoparsec, base
, blaze-builder, bytestring, conduit, containers, fast-logger
, hspec, hspec-expectations, hspec-expectations-lifted
, http-api-data, lib, monad-logger, mtl, path-pieces, persistent
, persistent-qq, persistent-test, postgresql-libpq
, postgresql-simple, quickcheck-instances, resource-pool, resourcet
, string-conversions, text, time, transformers, unliftio
, unliftio-core, unordered-containers, vault, vector
}:
mkDerivation {
  pname = "persistent-postgresql";
  version = "2.13.5.2";
  sha256 = "712892e70e5cc0b470506b938ab41785dfcfee36f382017673de50ebf78c105d";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson attoparsec base blaze-builder bytestring conduit containers
    monad-logger mtl persistent postgresql-libpq postgresql-simple
    resource-pool resourcet string-conversions text time transformers
    unliftio-core vault
  ];
  testHaskellDepends = [
    aeson base bytestring containers fast-logger hspec
    hspec-expectations hspec-expectations-lifted http-api-data HUnit
    monad-logger path-pieces persistent persistent-qq persistent-test
    QuickCheck quickcheck-instances resourcet text time transformers
    unliftio unliftio-core unordered-containers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.yesodweb.com/book/persistent";
  description = "Backend for the persistent library using postgresql";
  license = lib.licenses.mit;
  broken = false;
}
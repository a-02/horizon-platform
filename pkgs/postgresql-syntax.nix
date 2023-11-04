{ mkDerivation, QuickCheck, base, bytestring, case-insensitive
, hashable, headed-megaparsec, hedgehog, lib, megaparsec
, parser-combinators, quickcheck-instances, rerebase, tasty
, tasty-hunit, tasty-quickcheck, text, text-builder
, unordered-containers
}:
mkDerivation {
  pname = "postgresql-syntax";
  version = "0.4.1";
  sha256 = "93cde438f4ca505450dc9c85d13c3e2868c5e268f25110c2e8c0b7bd9e9443d3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring case-insensitive hashable headed-megaparsec
    megaparsec parser-combinators text text-builder
    unordered-containers
  ];
  testHaskellDepends = [
    hedgehog QuickCheck quickcheck-instances rerebase tasty tasty-hunit
    tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/postgresql-syntax";
  description = "PostgreSQL AST parsing and rendering";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation, QuickCheck, aeson, attoparsec, base, base-compat
, bifunctors, bytestring, case-insensitive, constraints, deepseq
, fetchgit, hspec, hspec-discover, http-api-data, http-media
, http-types, lib, mmorph, mtl, network-uri, quickcheck-instances
, singleton-bool, sop-core, string-conversions, tagged, text
, transformers, vault
}:
mkDerivation {
  pname = "servant";
  version = "0.19.1";
  src = fetchgit {
    url = "https://github.com/haskell-servant/servant";
    sha256 = "0ck3l8nj42nan8abdzvkl4ynb2l9nhnsq2zjl24d7sgca860fi57";
    rev = "7ae787371333556a7b84778631ed91d1d73e8370";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/servant/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson attoparsec base base-compat bifunctors bytestring
    case-insensitive constraints deepseq http-api-data http-media
    http-types mmorph mtl network-uri QuickCheck singleton-bool
    sop-core string-conversions tagged text transformers vault
  ];
  testHaskellDepends = [
    aeson base base-compat bytestring hspec http-media mtl QuickCheck
    quickcheck-instances string-conversions text transformers
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://docs.servant.dev/";
  description = "A family of combinators for defining webservices APIs";
  license = lib.licenses.bsd3;
  broken = false;
}
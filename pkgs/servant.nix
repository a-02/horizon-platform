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
    sha256 = "0ay4q9jy3xkn5j1k91snfdndi6j91hlri9h79m429j0d8v5vnj7i";
    rev = "0cda2d0ac87dc0dd47744134e44ab0b1647fe09a";
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
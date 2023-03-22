{ mkDerivation, QuickCheck, base, bytestring, containers
, contravariant, criterion, deepseq, exceptions, hashable, hspec
, hspec-discover, hspec-megaparsec, lib, megaparsec, mtl
, profunctors, reflection, tagged, template-haskell, text, weigh
}:
mkDerivation {
  pname = "modern-uri";
  version = "0.3.6.0";
  sha256 = "cf3c5b2cbbab9b8f3c171488ff8056dd1c37de011301090345689fc7138d43d2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers contravariant deepseq exceptions
    hashable megaparsec mtl profunctors QuickCheck reflection tagged
    template-haskell text
  ];
  testHaskellDepends = [
    base bytestring hspec hspec-megaparsec megaparsec QuickCheck text
  ];
  testToolDepends = [ hspec-discover ];
  benchmarkHaskellDepends = [
    base bytestring criterion deepseq megaparsec text weigh
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mrkkrp/modern-uri";
  description = "Modern library for working with URIs";
  license = lib.licenses.bsd3;
  broken = false;
}
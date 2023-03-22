{ mkDerivation, QuickCheck, attoparsec, base, base-orphans, binary
, bytestring, charset, containers, lib, mtl, parsec
, quickcheck-instances, scientific, text, transformers
, unordered-containers
}:
mkDerivation {
  pname = "parsers";
  version = "0.12.11";
  sha256 = "91ff5067208bb9c618b9d41850c3bcdf76865922813937a7047f040daa3b1319";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec base base-orphans binary charset containers mtl parsec
    scientific text transformers unordered-containers
  ];
  testHaskellDepends = [
    attoparsec base bytestring parsec QuickCheck quickcheck-instances
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/parsers/";
  description = "Parsing combinators";
  license = lib.licenses.bsd3;
  broken = false;
}
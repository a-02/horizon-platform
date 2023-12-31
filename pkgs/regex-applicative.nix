{ mkDerivation, attoparsec, base, bytestring, containers, criterion
, deepseq, filtrable, lib, megaparsec, parsec, parsers
, parsers-megaparsec, smallcheck, tasty, tasty-hunit
, tasty-smallcheck, transformers
}:
mkDerivation {
  pname = "regex-applicative";
  version = "0.3.4";
  sha256 = "1769a479c3ff953bc5a99a89e5648a6f01c5ff54fc9a09acceb9e029e2352636";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers filtrable transformers ];
  testHaskellDepends = [
    base containers filtrable smallcheck tasty tasty-hunit
    tasty-smallcheck transformers
  ];
  benchmarkHaskellDepends = [
    attoparsec base bytestring criterion deepseq megaparsec parsec
    parsers parsers-megaparsec
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/feuerbach/regex-applicative";
  description = "Regex-based parsing with applicative interface";
  license = lib.licenses.mit;
  broken = false;
}
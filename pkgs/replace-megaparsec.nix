{ mkDerivation, base, bytestring, hspec, lib, megaparsec
, parser-combinators, text
}:
mkDerivation {
  pname = "replace-megaparsec";
  version = "1.5.0.1";
  sha256 = "a113c6dda580ab274ef1a7db2829b8804899f6b24ede622550e069e84ed2968c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring megaparsec parser-combinators text
  ];
  testHaskellDepends = [ base bytestring hspec megaparsec text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jamesdbrock/replace-megaparsec";
  description = "Find, replace, split string patterns with Megaparsec parsers (instead of regex)";
  license = lib.licenses.bsd2;
  broken = false;
}
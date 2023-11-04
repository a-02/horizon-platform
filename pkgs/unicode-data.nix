{ mkDerivation, base, deepseq, hspec, lib, tasty, tasty-bench }:
mkDerivation {
  pname = "unicode-data";
  version = "0.4.0.1";
  sha256 = "37a5dea6801940beb65c4ac4b9d0f7e653a686cf773507f0ca61c210e0b06080";
  revision = "1";
  editedCabalFile = "1lvsn8r1xh8ip5gyrbwv7pk41yf2ynjimpd6g4am3n7j92djc7h8";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base hspec ];
  benchmarkHaskellDepends = [ base deepseq tasty tasty-bench ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/composewell/unicode-data";
  description = "Access Unicode Character Database (UCD)";
  license = lib.licenses.asl20;
  broken = false;
}
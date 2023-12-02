{ mkDerivation, base, deepseq, hspec, lib, tasty, tasty-bench }:
mkDerivation {
  pname = "unicode-data";
  version = "0.4.0.1";
  sha256 = "37a5dea6801940beb65c4ac4b9d0f7e653a686cf773507f0ca61c210e0b06080";
  revision = "2";
  editedCabalFile = "1v7kswa3606k3j8y7y7rigxabgypx23m3wv2hbnqs75s15g7ip2y";
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
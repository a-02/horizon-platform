{ mkDerivation, QuickCheck, array, async, base, bytestring, deepseq
, directory, gauge, hspec, hspec-discover, lib, network, process
, random, stm, text, transformers, unix, zlib
}:
mkDerivation {
  pname = "streaming-commons";
  version = "0.2.2.6";
  sha256 = "0180958a882eb0f6262b812fe886c2b1b8285474b5b958f814ae4f05409fbf79";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array async base bytestring directory network process random stm
    text transformers unix zlib
  ];
  testHaskellDepends = [
    array async base bytestring deepseq hspec network QuickCheck text
    unix zlib
  ];
  testToolDepends = [ hspec-discover ];
  benchmarkHaskellDepends = [ base bytestring deepseq gauge text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fpco/streaming-commons";
  description = "Common lower-level functions needed by various streaming data libraries";
  license = lib.licenses.mit;
  broken = false;
}
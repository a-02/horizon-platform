{ mkDerivation, QuickCheck, array, async, base, bytestring, deepseq
, directory, gauge, hspec, hspec-discover, lib, network, process
, random, stm, text, transformers, unix, zlib
}:
mkDerivation {
  pname = "streaming-commons";
  version = "0.2.2.5";
  sha256 = "ca50819bdb2b248ced790e9faab07a3a5369ef702d9f9a932f26438bbeeca704";
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
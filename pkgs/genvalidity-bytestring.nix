{ mkDerivation, QuickCheck, base, bytestring, criterion, deepseq
, genvalidity, genvalidity-criterion, genvalidity-hspec, hspec, lib
, random, validity, validity-bytestring
}:
mkDerivation {
  pname = "genvalidity-bytestring";
  version = "1.0.0.1";
  sha256 = "3311f83fabcd549785b009868c63e53723774fa35fe755fe7bfc537c082c6dbb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring genvalidity QuickCheck random validity
    validity-bytestring
  ];
  testHaskellDepends = [
    base bytestring deepseq genvalidity genvalidity-hspec hspec
    QuickCheck validity
  ];
  benchmarkHaskellDepends = [
    base bytestring criterion genvalidity genvalidity-criterion
    QuickCheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "GenValidity support for ByteString";
  license = lib.licenses.mit;
  broken = false;
}
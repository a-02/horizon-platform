{ mkDerivation, QuickCheck, base, base64-bytestring, bytestring
, criterion, deepseq, lib, random-bytestring, tasty, tasty-hunit
, tasty-quickcheck, text, text-short
}:
mkDerivation {
  pname = "base64";
  version = "0.4.2.4";
  sha256 = "640a2d0afcb07e1de2e0a13a5e942b0265781c5942bd642a8793e7b019be3585";
  revision = "4";
  editedCabalFile = "1lc32d5nxk0ry1pfn3ss55hi4cv6qj5nkkdn3j4y3lrdwyv7kbw2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring deepseq text text-short
  ];
  testHaskellDepends = [
    base base64-bytestring bytestring QuickCheck random-bytestring
    tasty tasty-hunit tasty-quickcheck text text-short
  ];
  benchmarkHaskellDepends = [
    base base64-bytestring bytestring criterion deepseq
    random-bytestring text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/emilypi/base64";
  description = "A modern RFC 4648-compliant Base64 library";
  license = lib.licenses.bsd3;
  broken = false;
}
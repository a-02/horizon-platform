{ mkDerivation, HUnit, QuickCheck, aeson, base, bytestring
, containers, criterion, deepseq, ghc-prim, lib, string-qq, syb
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text, transformers
}:
mkDerivation {
  pname = "pandoc-types";
  version = "1.23";
  sha256 = "5e6721410219c0a39b05fc732de9864745592fffa8287ad6e87c66138a51162d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers deepseq ghc-prim QuickCheck syb
    text transformers
  ];
  testHaskellDepends = [
    aeson base bytestring containers HUnit QuickCheck string-qq syb
    test-framework test-framework-hunit test-framework-quickcheck2 text
  ];
  benchmarkHaskellDepends = [ base criterion text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://pandoc.org/";
  description = "Types for representing a structured document";
  license = lib.licenses.bsd3;
  broken = false;
}
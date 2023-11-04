{ mkDerivation, QuickCheck, base, criterion, deepseq, lib }:
mkDerivation {
  pname = "sorted-list";
  version = "0.2.2.0";
  sha256 = "39e70f76a621bd23992e69b5140d76502eaa602e31d2c2f8493fcdda5d980f37";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq ];
  testHaskellDepends = [ base QuickCheck ];
  benchmarkHaskellDepends = [ base criterion ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Type-enforced sorted lists and related functions";
  license = lib.licenses.bsd3;
  broken = false;
}
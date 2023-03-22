{ mkDerivation, QuickCheck, atomic-primops, base, bytestring, clock
, containers, criterion, data-sketches, deepseq, doctest
, exceptions, hspec, lib, mtl, primitive, random, random-shuffle
, stm, text, transformers, transformers-compat, utf8-string
}:
mkDerivation {
  pname = "prometheus-client";
  version = "1.1.0";
  sha256 = "7da537f479f4982b89ed7e898df6ce73f7351f621add6960adb36905c8d72cb9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    atomic-primops base bytestring clock containers data-sketches
    deepseq exceptions mtl primitive stm text transformers
    transformers-compat utf8-string
  ];
  testHaskellDepends = [
    atomic-primops base bytestring clock containers data-sketches
    deepseq doctest exceptions hspec mtl primitive QuickCheck
    random-shuffle stm text transformers transformers-compat
    utf8-string
  ];
  benchmarkHaskellDepends = [
    base bytestring criterion random text utf8-string
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fimad/prometheus-haskell";
  description = "Haskell client library for http://prometheus.io.";
  license = lib.licenses.asl20;
  broken = false;
}
{ mkDerivation, QuickCheck, base, containers, criterion, deepseq
, hspec, lib, text, vector, weigh
}:
mkDerivation {
  pname = "text-metrics";
  version = "0.3.2";
  sha256 = "bdd730a8f1ebc98a2d56edd73d94ebba6062ee1b49d4d019ffc2c37eaadd836e";
  revision = "2";
  editedCabalFile = "0h146i2dvv21nc5z1x9a5a9c2v5ml2kvd10krd5p5aaqpng6i1g4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers text vector ];
  testHaskellDepends = [ base hspec QuickCheck text ];
  benchmarkHaskellDepends = [ base criterion deepseq text weigh ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mrkkrp/text-metrics";
  description = "Calculate various string metrics efficiently";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, QuickCheck, base, hspec, ieee754, lib, pretty-show
}:
mkDerivation {
  pname = "quickcheck-assertions";
  version = "0.3.0";
  sha256 = "9b0328a788dcac0824a7d7496ab403eef04170551255c9e58fb6e2e319a9cacf";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ieee754 pretty-show QuickCheck ];
  testHaskellDepends = [ base hspec ieee754 QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/s9gf4ult/quickcheck-assertions";
  description = "HUnit like assertions for QuickCheck";
  license = lib.licenses.lgpl3Only;
  broken = false;
}
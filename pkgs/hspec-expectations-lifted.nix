{ mkDerivation, base, hspec-expectations, lib, transformers }:
mkDerivation {
  pname = "hspec-expectations-lifted";
  version = "0.10.0";
  sha256 = "22cdf1509b396fea2f53a0bb88dec3552f540d58cc60962a82970264c1e73828";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base hspec-expectations transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A version of hspec-expectations generalized to MonadIO";
  license = lib.licenses.mit;
  broken = false;
}
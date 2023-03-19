{ mkDerivation, QuickCheck, base, deepseq, hspec, lib, text, vector
}:
mkDerivation {
  pname = "text-zipper";
  version = "0.13";
  sha256 = "06521cc7c435f8e85aeb3ed3f2b872000c52087d73518de31e65bdca072a98a9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [ base deepseq text vector ];
  testHaskellDepends = [ base hspec QuickCheck text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jtdaugherty/text-zipper/";
  description = "A text editor zipper library";
  license = lib.licenses.bsd3;
  broken = false;
}
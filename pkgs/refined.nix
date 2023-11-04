{ mkDerivation, QuickCheck, aeson, base, bytestring, deepseq
, exceptions, hashable, lib, mtl, template-haskell, text
, these-skinny
}:
mkDerivation {
  pname = "refined";
  version = "0.8.1";
  sha256 = "35ae42f02aaa7dadbbdd6e9b53a5425b3a2d6bd9249235f6679a61f30e0f2735";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring deepseq exceptions hashable mtl QuickCheck
    template-haskell text these-skinny
  ];
  testHaskellDepends = [ base QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/refined";
  description = "Refinement types with static and runtime checking";
  license = lib.licenses.mit;
  broken = false;
}
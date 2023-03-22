{ mkDerivation, QuickCheck, aeson, base, bytestring, deepseq
, exceptions, hashable, lib, mtl, template-haskell, text
, these-skinny
}:
mkDerivation {
  pname = "refined";
  version = "0.8";
  sha256 = "3a477dd64a741708e32223a5deb79d297a36804ede759a8a50ed96c7bcad7f62";
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
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/refined";
  description = "Refinement types with static and runtime checking";
  license = lib.licenses.mit;
  broken = false;
}
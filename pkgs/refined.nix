{ mkDerivation, QuickCheck, aeson, base, bytestring, deepseq
, exceptions, fetchgit, hashable, lib, mtl, template-haskell, text
, these-skinny
}:
mkDerivation {
  pname = "refined";
  version = "0.8.1";
  src = fetchgit {
    url = "https://github.com/nikita-volkov/refined";
    sha256 = "1xl5syy2bl0j50fqg6ps161jagm9h30lhcd6z1khnxnfyq473awf";
    rev = "11296288b5e2f2b391ee721b50af3cfe7beaa790";
    fetchSubmodules = true;
  };
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
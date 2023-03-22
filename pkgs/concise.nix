{ mkDerivation, QuickCheck, base, bytestring, lens, lib
, quickcheck-instances, tasty, tasty-quickcheck, text
}:
mkDerivation {
  pname = "concise";
  version = "0.1.0.1";
  sha256 = "5c27df5a3e1fe820548e90abc4a0e326b6d0fb286218619aa22d3af90c7b9925";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring lens text ];
  testHaskellDepends = [
    base bytestring lens QuickCheck quickcheck-instances tasty
    tasty-quickcheck text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/frasertweedale/hs-concise";
  description = "Utilities for Control.Lens.Cons";
  license = lib.licenses.bsd3;
  broken = false;
}
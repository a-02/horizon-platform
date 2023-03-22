{ mkDerivation, QuickCheck, base, lib, size-based
, testing-type-modifiers
}:
mkDerivation {
  pname = "testing-feat";
  version = "1.1.1.1";
  sha256 = "c2c988b816b62c1e16ed611cccfbe7b1f4c53ab650b320bb193ccefc58a4a691";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base QuickCheck size-based testing-type-modifiers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/size-based/testing-feat";
  description = "Functional Enumeration of Algebraic Types";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, QuickCheck, base, lib, random, test-framework
, test-framework-quickcheck2
}:
mkDerivation {
  pname = "colour";
  version = "2.3.6";
  sha256 = "2cd35dcd6944a5abc9f108a5eb5ee564b6b1fa98a9ec79cefcc20b588991f871";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [
    base QuickCheck random test-framework test-framework-quickcheck2
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/haskellwiki/Colour";
  description = "A model for human colour/color perception";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation, Cabal, QuickCheck, base, base-compat, bytestring
, cabal-doctest, doctest, lib, memory, quickcheck-instances, tasty
, tasty-quickcheck, template-haskell, text
}:
mkDerivation {
  pname = "password-types";
  version = "1.0.0.0";
  sha256 = "6551d60c61c90509592e32ee021a927539d5f391cdfd94b76ca51add05c60a24";
  revision = "3";
  editedCabalFile = "0i6djm9zsb95qdan0vr9shilhmzjxqsqrjy9v16hcaph49wnw7pr";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [ base bytestring memory text ];
  testHaskellDepends = [
    base base-compat doctest QuickCheck quickcheck-instances tasty
    tasty-quickcheck template-haskell text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/cdepillabout/password/tree/master/password-types#readme";
  description = "Types for handling passwords";
  license = lib.licenses.bsd3;
  broken = false;
}
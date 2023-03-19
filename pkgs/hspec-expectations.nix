{ mkDerivation, HUnit, base, call-stack, lib, nanospec }:
mkDerivation {
  pname = "hspec-expectations";
  version = "0.8.2";
  sha256 = "819607ea1faf35ce5be34be61c6f50f3389ea43892d56fb28c57a9f5d54fb4ef";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base call-stack HUnit ];
  testHaskellDepends = [ base call-stack HUnit nanospec ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hspec/hspec-expectations#readme";
  description = "Catchy combinators for HUnit";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation, HUnit, base, exceptions, hspec, lib, retry }:
mkDerivation {
  pname = "auto-update";
  version = "0.1.6";
  sha256 = "f4e023dc8713c387ecf20d851247597fd012cabea3872310b35e911105eb66c4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base exceptions hspec HUnit retry ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/yesodweb/wai";
  description = "Efficiently run periodic, on-demand actions";
  license = lib.licenses.mit;
  broken = false;
}
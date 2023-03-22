{ mkDerivation, base, hspec, lib, silently }:
mkDerivation {
  pname = "nanospec";
  version = "0.2.2";
  sha256 = "cf14ccc2b296c910000cdc3eb51b37389b3eb94139384b9555db79b8128595e5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base hspec silently ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hspec/nanospec#readme";
  description = "A lightweight implementation of a subset of Hspec's API";
  license = lib.licenses.mit;
  broken = false;
}
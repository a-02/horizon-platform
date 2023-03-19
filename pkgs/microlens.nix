{ mkDerivation, base, lib }:
mkDerivation {
  pname = "microlens";
  version = "0.4.13.1";
  sha256 = "0a54abee8ff4f6aeb4bea0783409a3dbd28a4e7a892bac916b0fb6a71382d7fc";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/monadfix/microlens";
  description = "A tiny lens library with no dependencies";
  license = lib.licenses.bsd3;
  broken = false;
}
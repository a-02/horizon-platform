{ mkDerivation, HUnit, base, hspec, lib, lucid, text }:
mkDerivation {
  pname = "lucid-aria";
  version = "0.1.0.1";
  sha256 = "ff30430e76e1224eee79667a0d28a513fb88f223036debdd06dd1e33f650b088";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base lucid text ];
  testHaskellDepends = [ base hspec HUnit lucid ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://git.sr.ht/~rycee/lucid-aria";
  description = "Provides ARIA attributes for Lucid templates";
  license = lib.licenses.asl20;
  broken = false;
}
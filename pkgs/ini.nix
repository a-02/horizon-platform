{ mkDerivation, attoparsec, base, hspec, lib, text
, unordered-containers
}:
mkDerivation {
  pname = "ini";
  version = "0.4.2";
  sha256 = "f79d8ceca14a0d4039e3443d34e9e33a390fd3c3562a8f0a301f45ba1161e936";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec base text unordered-containers
  ];
  testHaskellDepends = [ base hspec unordered-containers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/andreasabel/ini";
  description = "Configuration files in the INI format";
  license = lib.licenses.bsd3;
  broken = false;
}
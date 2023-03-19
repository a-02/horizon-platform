{ mkDerivation, aeson, attoparsec, base, bytestring, lens, lib
, scientific, text, text-short, unordered-containers, vector
}:
mkDerivation {
  pname = "lens-aeson";
  version = "1.2.2";
  sha256 = "14d13885b47fd9448a8f2019eda600b4556c784b02d1b86a6dc114b13f789573";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson attoparsec base bytestring lens scientific text text-short
    unordered-containers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/lens/lens-aeson/";
  description = "Law-abiding lenses for aeson";
  license = lib.licenses.mit;
  broken = false;
}
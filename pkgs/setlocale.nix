{ mkDerivation, base, lib }:
mkDerivation {
  pname = "setlocale";
  version = "1.0.0.10";
  sha256 = "3972ff10c22318f5451215dc886c1535fea5ab7dfefe5ce461b1603865423ba7";
  revision = "3";
  editedCabalFile = "1ich9zjmwc73ilblmbakl627mqpncyd79vnpkflms65qylqj6dvk";
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
  homepage = "https://gitlab.com/Kritzefitz/haskell-setlocale/";
  description = "Haskell bindings to setlocale";
  license = lib.licenses.bsd3;
  broken = false;
}
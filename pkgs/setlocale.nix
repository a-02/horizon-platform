{ mkDerivation, base, lib }:
mkDerivation {
  pname = "setlocale";
  version = "1.0.0.10";
  sha256 = "3972ff10c22318f5451215dc886c1535fea5ab7dfefe5ce461b1603865423ba7";
  revision = "4";
  editedCabalFile = "0lpr3lrn28ig0q2cd5xgggzgf917xdpx1zq2q523r0qin6vbb44n";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://gitlab.com/Kritzefitz/haskell-setlocale/";
  description = "Haskell bindings to setlocale";
  license = lib.licenses.bsd3;
  broken = false;
}
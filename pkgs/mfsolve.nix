{ mkDerivation, base, hashable, lib, mtl, mtl-compat, tasty
, tasty-hunit, unordered-containers
}:
mkDerivation {
  pname = "mfsolve";
  version = "0.3.2.2";
  sha256 = "093fe312090e7e59355c8d23efb54cfe9bd0f81a2fbfec6c138d34f03a188f81";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base hashable mtl mtl-compat unordered-containers
  ];
  testHaskellDepends = [ base tasty tasty-hunit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Equation solver and calculator à la metafont";
  license = lib.licenses.bsd3;
  broken = false;
}
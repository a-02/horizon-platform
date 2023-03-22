{ mkDerivation, base, data-default-class
, data-default-instances-containers, data-default-instances-dlist
, data-default-instances-old-locale, lib
}:
mkDerivation {
  pname = "data-default";
  version = "0.7.1.1";
  sha256 = "b0f95d279cd75cacaa8152a01590dc3460f7134f6840b37052abb3ba3cb2a511";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base data-default-class data-default-instances-containers
    data-default-instances-dlist data-default-instances-old-locale
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A class for types with a default value";
  license = lib.licenses.bsd3;
  broken = false;
}
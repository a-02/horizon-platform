{ mkDerivation, base, lib, polysemy, polysemy-kvstore
, polysemy-several
}:
mkDerivation {
  pname = "polysemy-methodology";
  version = "0.2.2.0";
  sha256 = "4adedfd60b1590b265fb8ec15e636ec7521f668a1042f96adc6a1083075a1009";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base polysemy polysemy-kvstore polysemy-several
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Domain modelling algebra for polysemy";
  license = lib.licenses.mit;
  broken = false;
}
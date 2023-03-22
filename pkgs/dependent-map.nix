{ mkDerivation, base, constraints-extras, containers, dependent-sum
, lib
}:
mkDerivation {
  pname = "dependent-map";
  version = "0.4.0.0";
  sha256 = "53ce0b52d8be1b85fc6489fb27656f16d837bee4fbe0ddf39c844e3ea8871f2c";
  revision = "1";
  editedCabalFile = "160p9crvlx1sn60inkwxa6mv1h2d4fgqnpsb2km67zrkpdfyd2s2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base constraints-extras containers dependent-sum
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/obsidiansystems/dependent-map";
  description = "Dependent finite maps (partial dependent products)";
  license = "unknown";
  broken = false;
}
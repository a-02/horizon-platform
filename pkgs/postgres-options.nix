{ mkDerivation, base, bytestring, generic-monoid, hspec, lib, split
, uri-bytestring
}:
mkDerivation {
  pname = "postgres-options";
  version = "0.2.0.0";
  sha256 = "c45f459abcc797d0707c1931301434037acdfada33e47c843f219cf35609d9b5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring generic-monoid split uri-bytestring
  ];
  testHaskellDepends = [ base hspec ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jfischoff/postgres-options#readme";
  description = "An Options type representing options for postgres connections";
  license = lib.licenses.bsd3;
  broken = false;
}
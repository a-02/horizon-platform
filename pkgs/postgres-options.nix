{ mkDerivation, base, bytestring, generic-monoid, hspec, lib, split
, uri-bytestring
}:
mkDerivation {
  pname = "postgres-options";
  version = "0.2.1.0";
  sha256 = "0ab2acf4447abec49ca0ffa71de5732d40b04ed0f791e7f7f6c7672f3644936d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring generic-monoid split uri-bytestring
  ];
  testHaskellDepends = [ base hspec ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jfischoff/postgres-options#readme";
  description = "An Options type representing options for postgres connections";
  license = lib.licenses.bsd3;
  broken = false;
}
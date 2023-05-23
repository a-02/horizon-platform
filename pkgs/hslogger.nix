{ mkDerivation, HUnit, base, bytestring, containers, deepseq, lib
, network, network-bsd, old-locale, time, unix
}:
mkDerivation {
  pname = "hslogger";
  version = "1.3.1.0";
  sha256 = "7f2364f6c0b9c5b85a257267a335816126ef2471c817a42797a5d3c57acaca5b";
  revision = "7";
  editedCabalFile = "1jvh7zs0a2n47785bpq9bf3nba0gvbbvhhq1ban87prlhr0j3r2k";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers deepseq network network-bsd old-locale
    time unix
  ];
  testHaskellDepends = [ base HUnit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-hvr/hslogger/wiki";
  description = "Versatile logging framework";
  license = lib.licenses.bsd3;
  broken = false;
}
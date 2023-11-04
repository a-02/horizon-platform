{ mkDerivation, base, bytestring, containers, hashable, lib, time
, unordered-containers
}:
mkDerivation {
  pname = "expiring-cache-map";
  version = "0.0.6.1";
  sha256 = "0e3bc294978b46ee59bf0b4a7e7a5bd7ed5da7bc261ffebdb0cb1b60353c64b9";
  revision = "1";
  editedCabalFile = "1k5wqilafxp3ksqb7qy90cwipk0db568f15amn3mnf9krc1qjabg";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers hashable unordered-containers
  ];
  testHaskellDepends = [
    base bytestring containers hashable time unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://codeberg.org/elblake/expiring-cache-map";
  description = "General purpose simple caching";
  license = lib.licenses.bsd3;
  broken = false;
}
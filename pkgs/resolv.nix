{ mkDerivation
, base
, base16-bytestring
, binary
, bytestring
, containers
, directory
, filepath
, lib
, tasty
, tasty-hunit
}:
mkDerivation {
  pname = "resolv";
  version = "0.1.2.0";
  sha256 = "81a2bafad484db123cf8d17a02d98bb388a127fd0f822fa022589468a0e64671";
  revision = "5";
  editedCabalFile = "0df5y8bj9bxjmqnkvpwxvb17k70g1i174xs6vfrv9f1lys7xkqk1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    base16-bytestring
    binary
    bytestring
    containers
  ];
  testHaskellDepends = [
    base
    bytestring
    directory
    filepath
    tasty
    tasty-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Domain Name Service (DNS) lookup via the libresolv standard library routines";
  license = lib.licenses.gpl2Plus;
  broken = false;
}

{ mkDerivation, base, base16-bytestring, binary, bytestring
, containers, directory, filepath, lib, tasty, tasty-hunit
}:
mkDerivation {
  pname = "resolv";
  version = "0.2.0.2";
  sha256 = "880d283df9132a7375fa28670f71e86480a4f49972256dc2a204c648274ae74b";
  revision = "3";
  editedCabalFile = "0i9h81lrl0gdk6i1yrg2kqdx89fzr0wb29b6p7g2y3bnnmd2cs28";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base16-bytestring binary bytestring containers
  ];
  testHaskellDepends = [
    base bytestring directory filepath tasty tasty-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Domain Name Service (DNS) lookup via the libresolv standard library routines";
  license = lib.licenses.gpl2Plus;
  broken = false;
}
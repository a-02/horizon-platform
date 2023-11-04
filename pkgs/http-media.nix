{ mkDerivation, QuickCheck, base, bytestring, case-insensitive
, containers, lib, tasty, tasty-quickcheck, utf8-string
}:
mkDerivation {
  pname = "http-media";
  version = "0.8.1.1";
  sha256 = "1920adf31b15d167f60374fbfd0a53a1fbe7820fd7fd459beacf6eb00d03f183";
  revision = "1";
  editedCabalFile = "0vlaxmh1qqli981bwn3hw0hqfy6spkijdywycnhxi0z1qg5837fk";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring case-insensitive containers utf8-string
  ];
  testHaskellDepends = [
    base bytestring case-insensitive containers QuickCheck tasty
    tasty-quickcheck utf8-string
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/zmthy/http-media";
  description = "Processing HTTP Content-Type and Accept headers";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation, QuickCheck, base, bytestring, case-insensitive
, containers, lib, test-framework, test-framework-quickcheck2
, utf8-string
}:
mkDerivation {
  pname = "http-media";
  version = "0.8.0.0";
  sha256 = "398279d1dff5b60cd8b8c650caceca248ea1184d694bedf5df5426963b2b9c53";
  revision = "7";
  editedCabalFile = "1sm8bnrqvwkj7f60x4s8vfsj6lfi0knq38im35x88wk8s9whg6jd";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring case-insensitive containers utf8-string
  ];
  testHaskellDepends = [
    base bytestring case-insensitive containers QuickCheck
    test-framework test-framework-quickcheck2 utf8-string
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/zmthy/http-media";
  description = "Processing HTTP Content-Type and Accept headers";
  license = lib.licenses.mit;
  broken = false;
}
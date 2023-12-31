{ mkDerivation, HUnit, HsOpenSSL, base, bytestring, io-streams, lib
, network, test-framework, test-framework-hunit
}:
mkDerivation {
  pname = "openssl-streams";
  version = "1.2.3.0";
  sha256 = "55f20bd8970e5ce4d0ff16fae8c584c63e26e0990d27364340b997f5feb5f682";
  revision = "2";
  editedCabalFile = "0xxbx82ksjnphi7vl93ymm3wp8kib5svqcnd6xamqmywrny08qfq";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring HsOpenSSL io-streams network
  ];
  testHaskellDepends = [
    base bytestring HsOpenSSL HUnit io-streams network test-framework
    test-framework-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "OpenSSL network support for io-streams";
  license = lib.licenses.bsd3;
  broken = false;
}
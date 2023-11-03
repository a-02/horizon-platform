{ mkDerivation, HUnit, attoparsec, base, bytestring, io-streams
, lib, network, test-framework, test-framework-hunit, transformers
}:
mkDerivation {
  pname = "io-streams-haproxy";
  version = "1.0.1.0";
  sha256 = "b74eca9290fe838a0e3be857a38b62cf6fb7478acee400eac19e47471a2c96b5";
  revision = "8";
  editedCabalFile = "03gzlz7hg2jvnx2355r65201680lcm59ln7azzb118abirl460s6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec base bytestring io-streams network transformers
  ];
  testHaskellDepends = [
    attoparsec base bytestring HUnit io-streams network test-framework
    test-framework-hunit transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://snapframework.com/";
  description = "HAProxy protocol 1.5 support for io-streams";
  license = lib.licenses.bsd3;
  broken = false;
}
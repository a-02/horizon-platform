{ mkDerivation, QuickCheck, aeson, base, base-compat
, base64-bytestring, binary, bytestring, cereal, deepseq, hashable
, http-api-data, lib, serialise, tasty, tasty-quickcheck, text
}:
mkDerivation {
  pname = "base64-bytestring-type";
  version = "1.0.1";
  sha256 = "f607d07c4aab227b4536c495fa7c07b35ddc9c2c013d385c16c02f236526780e";
  revision = "18";
  editedCabalFile = "0ykjgy3c7f6rmx9mj99y21lxsb81pd999pl98x0kvw0fai762hbp";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base-compat base64-bytestring binary bytestring cereal
    deepseq hashable http-api-data QuickCheck serialise text
  ];
  testHaskellDepends = [
    aeson base binary bytestring cereal http-api-data serialise tasty
    tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/base64-bytestring-type#readme";
  description = "A newtype around ByteString, for base64 encoding";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, base, bytestring, cereal, cryptonite, lib, memory
, tasty, tasty-hunit, time
}:
mkDerivation {
  pname = "one-time-password";
  version = "2.0.0";
  sha256 = "0a35ba546367070cbef67b80fc1e4eea3df5df3e683d3422873fa13a2b2bf9a2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cereal cryptonite memory time
  ];
  testHaskellDepends = [
    base bytestring cryptonite tasty tasty-hunit time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/s9gf4ult/one-time-password";
  description = "HMAC-Based and Time-Based One-Time Passwords";
  license = lib.licenses.mit;
  broken = false;
}
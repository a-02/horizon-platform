{ mkDerivation, aeson, attoparsec, base, bytestring, hashable, lib
, microlens, scientific, tasty, tasty-hunit, text, vector
}:
mkDerivation {
  pname = "microlens-aeson";
  version = "2.5.0";
  sha256 = "a28d9c95d14bfccc73856b4d0cbe8b51ec762712ab228121a54878b2c402b840";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson attoparsec base bytestring hashable microlens scientific text
    vector
  ];
  testHaskellDepends = [
    aeson base bytestring hashable microlens tasty tasty-hunit text
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/fosskers/microlens-aeson/";
  description = "Law-abiding lenses for Aeson, using microlens";
  license = lib.licenses.mit;
  broken = false;
}
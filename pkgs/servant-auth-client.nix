{ mkDerivation, QuickCheck, aeson, base, bytestring, containers
, hspec, hspec-discover, http-client, http-types, jose, lib
, servant, servant-auth, servant-auth-server, servant-client
, servant-client-core, servant-server, time, transformers, wai
, warp
}:
mkDerivation {
  pname = "servant-auth-client";
  version = "0.4.1.1";
  sha256 = "18bf66c4f35b3da2c6991cc4c74d9594d6fe0134af0bbfaec6547c58c20540bb";
  revision = "1";
  editedCabalFile = "1ff5hcpc56w7q97myavmfrl5m8sv38mjcw83lgyy0g56d893svhw";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers servant servant-auth servant-client-core
  ];
  testHaskellDepends = [
    aeson base bytestring hspec http-client http-types jose QuickCheck
    servant servant-auth servant-auth-server servant-client
    servant-server time transformers wai warp
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-servant/servant/tree/master/servant-auth#readme";
  description = "servant-client/servant-auth compatibility";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation
, QuickCheck
, aeson
, base
, bytestring
, containers
, hspec
, hspec-discover
, http-client
, http-types
, jose
, lib
, servant
, servant-auth
, servant-auth-server
, servant-client
, servant-client-core
, servant-server
, time
, transformers
, wai
, warp
}:
mkDerivation {
  pname = "servant-auth-client";
  version = "0.4.1.0";
  sha256 = "03c1c9e1413c05ae30c269a2fef07e68bf41ff675edd180452d863d073e3359b";
  revision = "6";
  editedCabalFile = "0d6mi3w3gx9h21awf1gy2wx7dwh5l9ichww21a3p5rfd8a8swypf";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    containers
    servant
    servant-auth
    servant-client-core
  ];
  testHaskellDepends = [
    aeson
    base
    bytestring
    hspec
    http-client
    http-types
    jose
    QuickCheck
    servant
    servant-auth
    servant-auth-server
    servant-client
    servant-server
    time
    transformers
    wai
    warp
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/haskell-servant/servant-auth#readme";
  description = "servant-client/servant-auth compatibility";
  license = lib.licenses.bsd3;
  broken = false;
}

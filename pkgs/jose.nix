{ mkDerivation
, QuickCheck
, aeson
, base
, base64-bytestring
, bytestring
, concise
, containers
, cryptonite
, hspec
, lens
, lib
, memory
, monad-time
, mtl
, network-uri
, pem
, quickcheck-instances
, tasty
, tasty-hspec
, tasty-quickcheck
, template-haskell
, text
, time
, x509
}:
mkDerivation {
  pname = "jose";
  version = "0.9";
  sha256 = "92f919239d02c9f3369d885ba9a3a9fdf14f352e2dc281c3f50a5993df00314e";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    base64-bytestring
    bytestring
    concise
    containers
    cryptonite
    lens
    memory
    monad-time
    mtl
    network-uri
    QuickCheck
    quickcheck-instances
    template-haskell
    text
    time
    x509
  ];
  testHaskellDepends = [
    aeson
    base
    base64-bytestring
    bytestring
    concise
    containers
    cryptonite
    hspec
    lens
    mtl
    network-uri
    pem
    QuickCheck
    quickcheck-instances
    tasty
    tasty-hspec
    tasty-quickcheck
    text
    time
    x509
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/frasertweedale/hs-jose";
  description = "JSON Object Signing and Encryption (JOSE) and JSON Web Token (JWT) library";
  license = lib.licenses.asl20;
  broken = false;
}

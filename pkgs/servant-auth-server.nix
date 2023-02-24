{ mkDerivation
, QuickCheck
, aeson
, base
, base64-bytestring
, blaze-builder
, bytestring
, case-insensitive
, cookie
, data-default-class
, entropy
, hspec
, hspec-discover
, http-client
, http-types
, jose
, lens
, lens-aeson
, lib
, markdown-unlit
, memory
, monad-time
, mtl
, servant
, servant-auth
, servant-server
, tagged
, text
, time
, transformers
, unordered-containers
, wai
, warp
, wreq
}:
mkDerivation {
  pname = "servant-auth-server";
  version = "0.4.7.0";
  sha256 = "42da496b14f250495131d92280e007634dbed580cea7bc423cbe87877b2f24d4";
  revision = "4";
  editedCabalFile = "1qcgm2pqi5qjqk27632h69j8ishls6cby8gghvww73wi63fqii9n";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    base64-bytestring
    blaze-builder
    bytestring
    case-insensitive
    cookie
    data-default-class
    entropy
    http-types
    jose
    lens
    memory
    monad-time
    mtl
    servant
    servant-auth
    servant-server
    tagged
    text
    time
    unordered-containers
    wai
  ];
  testHaskellDepends = [
    aeson
    base
    bytestring
    case-insensitive
    hspec
    http-client
    http-types
    jose
    lens
    lens-aeson
    mtl
    QuickCheck
    servant
    servant-auth
    servant-server
    time
    transformers
    wai
    warp
    wreq
  ];
  testToolDepends = [ hspec-discover markdown-unlit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/haskell-servant/servant/servant-auth#readme";
  description = "servant-server/servant-auth compatibility";
  license = lib.licenses.bsd3;
  broken = false;
}
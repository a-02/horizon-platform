{ mkDerivation
, Cabal
, HUnit
, QuickCheck
, aeson
, aeson-pretty
, attoparsec
, authenticate-oauth
, base
, base16-bytestring
, base64-bytestring
, bytestring
, cabal-doctest
, case-insensitive
, containers
, cryptonite
, directory
, doctest
, exceptions
, filepath
, ghc-prim
, hashable
, http-client
, http-client-tls
, http-types
, lens
, lens-aeson
, lib
, memory
, mime-types
, network-info
, psqueues
, snap-core
, snap-server
, template-haskell
, temporary
, test-framework
, test-framework-hunit
, test-framework-quickcheck2
, text
, time
, time-locale-compat
, transformers
, unix-compat
, unordered-containers
, uuid
, vector
}:
mkDerivation {
  pname = "wreq";
  version = "0.5.3.3";
  sha256 = "bcf31dd31f7c8d023ec36170f1bb4bd187906dd277d05a15dc27838b0808657f";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    aeson
    attoparsec
    authenticate-oauth
    base
    base16-bytestring
    bytestring
    case-insensitive
    containers
    cryptonite
    exceptions
    ghc-prim
    hashable
    http-client
    http-client-tls
    http-types
    lens
    lens-aeson
    memory
    mime-types
    psqueues
    template-haskell
    text
    time
    time-locale-compat
    unordered-containers
  ];
  testHaskellDepends = [
    aeson
    aeson-pretty
    base
    base64-bytestring
    bytestring
    case-insensitive
    containers
    directory
    doctest
    filepath
    hashable
    http-client
    http-types
    HUnit
    lens
    lens-aeson
    network-info
    QuickCheck
    snap-core
    snap-server
    temporary
    test-framework
    test-framework-hunit
    test-framework-quickcheck2
    text
    time
    transformers
    unix-compat
    unordered-containers
    uuid
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.serpentine.com/wreq";
  description = "An easy-to-use HTTP client library";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, HUnit, HsOpenSSL, QuickCheck, attoparsec, base
, base16-bytestring, blaze-builder, bytestring, bytestring-builder
, case-insensitive, clock, containers, criterion, deepseq
, directory, filepath, http-common, http-streams, io-streams
, io-streams-haproxy, lib, lifted-base, monad-control, mtl, network
, old-locale, openssl-streams, parallel, random, snap-core
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text, threads, time, transformers, unix, unix-compat, vector
}:
mkDerivation {
  pname = "snap-server";
  version = "1.1.2.1";
  sha256 = "a47457fd746db202711b6a6b34a8575daa291a01a99cd0900e639aadc06fca7e";
  revision = "1";
  editedCabalFile = "09ljp1m8lv2khp6m76sj96qa3gr5v19c5caz54jlvinj7k6bhhfm";
  configureFlags = [ "-fopenssl" ];
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec base blaze-builder bytestring case-insensitive clock
    containers filepath HsOpenSSL io-streams io-streams-haproxy
    lifted-base mtl network old-locale openssl-streams snap-core text
    time transformers unix unix-compat vector
  ];
  testHaskellDepends = [
    attoparsec base base16-bytestring blaze-builder bytestring
    case-insensitive clock containers deepseq directory filepath
    HsOpenSSL http-common http-streams HUnit io-streams
    io-streams-haproxy lifted-base monad-control mtl network old-locale
    openssl-streams parallel QuickCheck random snap-core test-framework
    test-framework-hunit test-framework-quickcheck2 text threads time
    transformers unix unix-compat vector
  ];
  benchmarkHaskellDepends = [
    attoparsec base blaze-builder bytestring bytestring-builder
    criterion io-streams io-streams-haproxy snap-core transformers
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://snapframework.com/";
  description = "A web server for the Snap Framework";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, Glob, aeson, aeson-pretty, array, async, base
, base16-bytestring, bytestring, case-insensitive, containers
, cryptonite, directory, filepath, gauge, hspec, hspec-discover
, http-types, lib, network, network-byte-order, network-run
, psqueues, stm, text, time-manager, typed-process, unix-time
, unliftio, unordered-containers, vector
}:
mkDerivation {
  pname = "http2";
  version = "4.1.0";
  sha256 = "6da8bbdab1c82a3c005c6aceff2d8b0d2e715e55c059dcc4ba61ce14da8e1d4d";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array async base bytestring case-insensitive containers http-types
    network network-byte-order psqueues stm time-manager unix-time
    unliftio
  ];
  testHaskellDepends = [
    aeson aeson-pretty async base base16-bytestring bytestring
    cryptonite directory filepath Glob hspec http-types network
    network-byte-order network-run text typed-process
    unordered-containers vector
  ];
  testToolDepends = [ hspec-discover ];
  benchmarkHaskellDepends = [
    array base bytestring case-insensitive containers gauge
    network-byte-order stm
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kazu-yamamoto/http2";
  description = "HTTP/2 library";
  license = lib.licenses.bsd3;
  broken = false;
}
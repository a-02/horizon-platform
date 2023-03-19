{ mkDerivation, QuickCheck, array, auto-update, base
, bsb-http-chunked, bytestring, case-insensitive, containers
, directory, gauge, ghc-prim, hashable, hspec, hspec-discover
, http-client, http-date, http-types, http2, iproute, lib, network
, process, recv, simple-sendfile, stm, streaming-commons, text
, time-manager, unix, unix-compat, unliftio, vault, wai, word8
, x509
}:
mkDerivation {
  pname = "warp";
  version = "3.3.25";
  sha256 = "ea7d18f031898b5d8d0fa2306ed27a08d6b0a3dc223f84961423aab36d1446f1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array auto-update base bsb-http-chunked bytestring case-insensitive
    containers ghc-prim hashable http-date http-types http2 iproute
    network recv simple-sendfile stm streaming-commons text
    time-manager unix unix-compat unliftio vault wai word8 x509
  ];
  testHaskellDepends = [
    array auto-update base bsb-http-chunked bytestring case-insensitive
    containers directory ghc-prim hashable hspec http-client http-date
    http-types http2 iproute network process QuickCheck recv
    simple-sendfile stm streaming-commons text time-manager unix
    unix-compat unliftio vault wai word8 x509
  ];
  testToolDepends = [ hspec-discover ];
  benchmarkHaskellDepends = [
    auto-update base bytestring containers gauge hashable http-date
    http-types network recv time-manager unix unix-compat unliftio x509
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/yesodweb/wai";
  description = "A fast, light-weight web server for WAI applications";
  license = lib.licenses.mit;
  broken = false;
}
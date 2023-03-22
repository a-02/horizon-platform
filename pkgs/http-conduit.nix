{ mkDerivation, HUnit, aeson, attoparsec, base, blaze-builder
, bytestring, case-insensitive, conduit, conduit-extra, connection
, cookie, data-default-class, hspec, http-client, http-client-tls
, http-types, lib, mtl, network, resourcet, streaming-commons
, temporary, text, time, tls, transformers, unliftio, unliftio-core
, utf8-string, wai, wai-conduit, warp, warp-tls
}:
mkDerivation {
  pname = "http-conduit";
  version = "2.3.8";
  sha256 = "cfbef293856fdcce58618726ff911ca28e2ad07c8522b2cd1cfa2cb6e02542ae";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson attoparsec base bytestring conduit conduit-extra http-client
    http-client-tls http-types mtl resourcet transformers unliftio-core
  ];
  testHaskellDepends = [
    aeson base blaze-builder bytestring case-insensitive conduit
    conduit-extra connection cookie data-default-class hspec
    http-client http-types HUnit network resourcet streaming-commons
    temporary text time tls transformers unliftio utf8-string wai
    wai-conduit warp warp-tls
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.yesodweb.com/book/http-conduit";
  description = "HTTP client package with conduit interface and HTTPS support";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, HUnit, HsOpenSSL, aeson, aeson-pretty, attoparsec
, attoparsec-aeson, base, base64-bytestring, blaze-builder
, bytestring, case-insensitive, directory, filepath, ghc-prim
, hspec, hspec-expectations, http-common, io-streams, lib
, lifted-base, mtl, network, network-uri, openssl-streams, random
, snap-core, snap-server, text, transformers, unordered-containers
}:
mkDerivation {
  pname = "http-streams";
  version = "0.8.9.9";
  sha256 = "1bf34ab439eb5d2bdf540e8d77ced5ea8baa2ee2ca6048e7ba651db8405e6afb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson attoparsec attoparsec-aeson base base64-bytestring
    blaze-builder bytestring case-insensitive directory filepath
    HsOpenSSL http-common io-streams mtl network network-uri
    openssl-streams text transformers unordered-containers
  ];
  testHaskellDepends = [
    aeson aeson-pretty attoparsec base base64-bytestring blaze-builder
    bytestring case-insensitive directory ghc-prim HsOpenSSL hspec
    hspec-expectations http-common HUnit io-streams lifted-base mtl
    network network-uri openssl-streams random snap-core snap-server
    text transformers unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/aesiniath/http-streams/";
  description = "An HTTP client using io-streams";
  license = lib.licenses.bsd3;
  broken = false;
}
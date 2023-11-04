{ mkDerivation, aeson, base, bytestring, http-conduit, lib, mtl
, network, random, resourcet, text, time, unordered-containers
, uuid-types
}:
mkDerivation {
  pname = "raven-haskell";
  version = "0.1.4.1";
  sha256 = "5e7dcbb0fb0db15e5ca2bf56a8624b88f13ba3965b2b42c8f892f2e614cfe724";
  revision = "1";
  editedCabalFile = "1107g5f6sr7sjxnh2d3g727ncfqni6dsvda5hr99fh86vhm2g1wi";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring http-conduit mtl network random resourcet
    text time unordered-containers uuid-types
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://gitlab.com/dpwiz/raven-haskell";
  description = "Haskell client for Sentry logging service";
  license = lib.licenses.mit;
  broken = false;
}
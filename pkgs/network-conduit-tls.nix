{ mkDerivation, HUnit, base, bytestring, conduit, conduit-extra
, connection, data-default-class, lib, mtl, network
, streaming-commons, tls, transformers, unliftio-core
}:
mkDerivation {
  pname = "network-conduit-tls";
  version = "1.3.2";
  sha256 = "ecfd60e162de3993a71906293dcf2ec8bd4c794471eb8dca13746c1d8fd3ad7f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring conduit conduit-extra connection data-default-class
    network streaming-commons tls transformers unliftio-core
  ];
  testHaskellDepends = [
    base bytestring conduit conduit-extra connection HUnit mtl
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/snoyberg/conduit";
  description = "Create TLS-aware network code with conduits";
  license = lib.licenses.mit;
  broken = false;
}
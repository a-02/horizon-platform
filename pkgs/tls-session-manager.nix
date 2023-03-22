{ mkDerivation, auto-update, base, basement, bytestring, clock, lib
, memory, psqueues, tls
}:
mkDerivation {
  pname = "tls-session-manager";
  version = "0.0.4";
  sha256 = "ba207f79b4536a65625063106c621e8bafc0dc7928bd9273270e19f36d59938c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    auto-update base basement bytestring clock memory psqueues tls
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "In-memory TLS session manager";
  license = lib.licenses.bsd3;
  broken = false;
}
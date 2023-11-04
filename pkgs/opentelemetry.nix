{ mkDerivation, base, bytestring, exceptions, ghc-trace-events
, hashable, lib
}:
mkDerivation {
  pname = "opentelemetry";
  version = "0.8.0";
  sha256 = "e9bf1c3876de1be12e0cb1d7eeb758527e863989ea6f088a7241b2cb0493e415";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring exceptions ghc-trace-events hashable
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  license = lib.licenses.asl20;
  broken = false;
}
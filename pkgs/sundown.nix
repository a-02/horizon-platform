{ mkDerivation, base, bytestring, lib, text }:
mkDerivation {
  pname = "sundown";
  version = "0.6";
  sha256 = "cb9b7e98138311375148ffe0fa4c4b04eb7a9f8ec2ae13a674d465e5d71db027";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/bitonic/sundown";
  description = "Bindings to the sundown markdown library";
  license = lib.licenses.publicDomain;
  broken = false;
}
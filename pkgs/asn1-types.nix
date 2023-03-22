{ mkDerivation, base, bytestring, hourglass, lib, memory }:
mkDerivation {
  pname = "asn1-types";
  version = "0.3.4";
  sha256 = "78ee92a251379298ca820fa53edbf4b33c539b9fcd887c86f520c30e3b4e21a8";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring hourglass memory ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/vincenthz/hs-asn1";
  description = "ASN.1 types";
  license = lib.licenses.bsd3;
  broken = false;
}
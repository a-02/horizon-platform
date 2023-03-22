{ mkDerivation, asn1-encoding, asn1-types, base, bytestring, lib }:
mkDerivation {
  pname = "asn1-parse";
  version = "0.9.5";
  sha256 = "8f1fe1344d30b39dc594d74df2c55209577722af1497204b4c2b6d6e8747f39e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    asn1-encoding asn1-types base bytestring
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/vincenthz/hs-asn1";
  description = "Simple monadic parser for ASN1 stream types";
  license = lib.licenses.bsd3;
  broken = false;
}
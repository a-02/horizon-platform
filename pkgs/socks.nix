{ mkDerivation, base, basement, bytestring, cereal, lib, network }:
mkDerivation {
  pname = "socks";
  version = "0.6.1";
  sha256 = "734447558bb061ce768f53a0df1f2401902c6bee396cc96ce627edd986ef6a73";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base basement bytestring cereal network
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/vincenthz/hs-socks";
  description = "Socks proxy (ver 5)";
  license = lib.licenses.bsd3;
  broken = false;
}
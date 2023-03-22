{ mkDerivation, base, lib, wirelesstools }:
mkDerivation {
  pname = "iwlib";
  version = "0.1.2";
  sha256 = "fddffbf9e2875a4441b81c41b82004e920ca84fef65a17573a70e2b8a35cd147";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  librarySystemDepends = [ wirelesstools ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://codeberg.org/xmobar/iwlib";
  description = "Bindings for the iw C library";
  license = lib.licenses.bsd3;
  broken = false;
}
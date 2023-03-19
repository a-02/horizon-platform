{ mkDerivation, base, lib, stm }:
mkDerivation {
  pname = "stm-chans";
  version = "3.0.0.6";
  sha256 = "ea6e3e83b67380ada44a566014e2611ef9f98142a8bbb91583fb598425760a12";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base stm ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://wrengr.org/software/hackage.html";
  description = "Additional types of channels for STM";
  license = lib.licenses.bsd3;
  broken = false;
}
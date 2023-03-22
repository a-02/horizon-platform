{ mkDerivation, lib }:
mkDerivation {
  pname = "fail";
  version = "4.9.0.0";
  sha256 = "6d5cdb1a5c539425a9665f740e364722e1d9d6ae37fbc55f30fe3dbbbb91d4a2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail";
  description = "Forward-compatible MonadFail class";
  license = lib.licenses.bsd3;
  broken = false;
}
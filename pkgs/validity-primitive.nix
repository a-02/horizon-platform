{ mkDerivation, base, lib, primitive, validity }:
mkDerivation {
  pname = "validity-primitive";
  version = "0.0.0.1";
  sha256 = "3ecdef8e94f2a51b0bbcf807b22cc153eeb072f4386d4a8da388898c43f23c65";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base primitive validity ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "Validity instances for primitive";
  license = lib.licenses.mit;
  broken = false;
}

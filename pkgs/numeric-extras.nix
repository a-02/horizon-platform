{ mkDerivation, base, lib }:
mkDerivation {
  pname = "numeric-extras";
  version = "0.1";
  sha256 = "c700711021d96334be43a21fbd80a5f7146fdd6706ef8656f1d287ff000b61d6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/numeric-extras";
  description = "Useful tools from the C standard library";
  license = lib.licenses.bsd3;
  broken = false;
}
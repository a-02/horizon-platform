{ mkDerivation, base, lib }:
mkDerivation {
  pname = "type-hint";
  version = "0.1";
  sha256 = "1161cdbf4b4b43c2953ee60438e948737604193e1bfe2c880ff178538faa99b9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mvv/type-hint";
  description = "Guide type inference with proxy values";
  license = lib.licenses.bsd3;
  broken = false;
}
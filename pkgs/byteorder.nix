{ mkDerivation, base, lib }:
mkDerivation {
  pname = "byteorder";
  version = "1.0.4";
  sha256 = "bd20bbb586947f99c38a4c93d9d0266f49f6fc581767b51ba568f6d5d52d2919";
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
  homepage = "http://community.haskell.org/~aslatter/code/byteorder";
  description = "Exposes the native endianness or byte ordering of the system";
  license = lib.licenses.bsd3;
  broken = false;
}
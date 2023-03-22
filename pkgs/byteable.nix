{ mkDerivation, base, bytestring, lib }:
mkDerivation {
  pname = "byteable";
  version = "0.1.1";
  sha256 = "243b34a1b5b64b39e39fe58f75c18f6cad5b668b10cabcd86816cbde27783fe2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [ base bytestring ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/vincenthz/hs-byteable";
  description = "Type class for sequence of bytes";
  license = lib.licenses.bsd3;
  broken = false;
}
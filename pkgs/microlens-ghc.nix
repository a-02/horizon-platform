{ mkDerivation, array, base, bytestring, containers, lib, microlens
, transformers
}:
mkDerivation {
  pname = "microlens-ghc";
  version = "0.4.14.2";
  sha256 = "58e5c5a6309d1145ac9062e7759d25184f14d451111b5783c103537c6561cd9d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers microlens transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/stevenfontanella/microlens";
  description = "microlens + array, bytestring, containers, transformers";
  license = lib.licenses.bsd3;
  broken = false;
}
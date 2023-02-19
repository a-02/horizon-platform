{ mkDerivation
, base
, bytestring
, lib
, primitive
, stm
, text-short
}:
mkDerivation {
  pname = "primitive-unlifted";
  version = "0.1.3.1";
  sha256 = "8b330e1a7b146333344304334d67b60481535bb506f1e53500e2ef4bd9fb34be";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring primitive text-short ];
  testHaskellDepends = [ base primitive stm ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-primitive/primitive-unlifted";
  description = "Primitive GHC types with unlifted types inside";
  license = lib.licenses.bsd3;
  broken = false;
}

{ mkDerivation, HUnit, base, bifunctors, contravariant, ghc-prim
, lib, linear-base, profunctors, tagged, transformers
}:
mkDerivation {
  pname = "one-liner";
  version = "2.1";
  sha256 = "d0e51f172e8216fa587cde54d7cafc1e28f6ea4e2708a27b6b3a3634da8eed25";
  revision = "1";
  editedCabalFile = "1n6d74s0x91qi4fi6wv5yggjb1nvwk0ir580mkf67bca2x6f1cqn";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bifunctors contravariant ghc-prim linear-base profunctors
    tagged transformers
  ];
  testHaskellDepends = [ base contravariant HUnit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/sjoerdvisscher/one-liner";
  description = "Constraint-based generics";
  license = lib.licenses.bsd3;
  broken = false;
}
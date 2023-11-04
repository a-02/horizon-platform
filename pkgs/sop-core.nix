{ mkDerivation, base, deepseq, lib }:
mkDerivation {
  pname = "sop-core";
  version = "0.5.0.2";
  sha256 = "87bffd2254b98ded822d449fcd1c33dbd74d2ce96bf35e7a6714abc5a2297265";
  revision = "3";
  editedCabalFile = "0rlrf4whfkqf200916d02r0s4zqlimb3d4z6gd3f5czayncp31cx";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "True Sums of Products";
  license = lib.licenses.bsd3;
  broken = false;
}
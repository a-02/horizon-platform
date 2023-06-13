{ mkDerivation, base, lib, primitive, time }:
mkDerivation {
  pname = "resource-pool";
  version = "0.3.1.0";
  sha256 = "fe14a0f90526ff5e1629ff6bf19025ebb18354352718abc7814095d001f58c4e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base primitive time ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A high-performance striped resource pooling implementation";
  license = lib.licenses.bsd3;
  broken = false;
}
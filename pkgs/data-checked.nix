{ mkDerivation, base, deepseq, lib }:
mkDerivation {
  pname = "data-checked";
  version = "0.3";
  sha256 = "dc87d09c7c8587c9e6e372166e8de3b42c2cd804a493ff100c253e4d713c5676";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mvv/data-checked";
  description = "Type-indexed runtime-checked properties";
  license = lib.licenses.bsd3;
  broken = false;
}
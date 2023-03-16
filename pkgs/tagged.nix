{ mkDerivation
, base
, deepseq
, lib
, template-haskell
, transformers
}:
mkDerivation {
  pname = "tagged";
  version = "0.8.7";
  sha256 = "6414eeac27a1633f49e2f78199ced99ce8ce3d70b658cf6d55b1d81ff60cb961";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    deepseq
    template-haskell
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/tagged";
  description = "Haskell 98 phantom types to avoid unsafely passing dummy arguments";
  license = lib.licenses.bsd3;
  broken = false;
}

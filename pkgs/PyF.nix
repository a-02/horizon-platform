{ mkDerivation
, HUnit
, base
, bytestring
, deepseq
, filepath
, ghc
, ghc-boot
, hspec
, lib
, mtl
, parsec
, process
, template-haskell
, temporary
, text
, time
}:
mkDerivation {
  pname = "PyF";
  version = "0.11.1.0";
  sha256 = "8fd451ac23e5e63813c464e1a8ac98ba5c2fb11599441c80fe9ebc0186e61c1f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    ghc
    ghc-boot
    mtl
    parsec
    template-haskell
    text
    time
  ];
  testHaskellDepends = [
    base
    bytestring
    deepseq
    filepath
    hspec
    HUnit
    process
    template-haskell
    temporary
    text
    time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Quasiquotations for a python like interpolated string formatter";
  license = lib.licenses.bsd3;
  broken = false;
}

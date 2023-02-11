{ mkDerivation
, QuickCheck
, array
, base
, containers
, deepseq
, extra
, inspection-testing
, lib
, transformers
}:
mkDerivation {
  pname = "algebraic-graphs";
  version = "0.6.1";
  sha256 = "2d64982591929cbc9a2f184eeb7271b8a4096672fe725c928ea4b97aeac40a99";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    containers
    deepseq
    transformers
  ];
  testHaskellDepends = [
    array
    base
    containers
    deepseq
    extra
    inspection-testing
    QuickCheck
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/snowleopard/alga";
  description = "A library for algebraic graph construction and transformation";
  license = lib.licenses.mit;
  broken = false;
}

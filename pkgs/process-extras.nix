{ mkDerivation
, base
, bytestring
, data-default
, deepseq
, generic-deriving
, HUnit
, lib
, ListLike
, mtl
, process
, text
}:
mkDerivation {
  pname = "process-extras";
  version = "0.7.4";
  sha256 = "293e75f849254ce0ce0d7fa659681917e07a557c602505a2f9e20777467e984e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    data-default
    deepseq
    generic-deriving
    ListLike
    mtl
    process
    text
  ];
  testHaskellDepends = [ base HUnit ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/seereason/process-extras";
  description = "Process extras";
  license = lib.licenses.mit;
  broken = false;
}
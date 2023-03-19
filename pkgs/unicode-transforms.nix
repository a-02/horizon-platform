{ mkDerivation, QuickCheck, base, bytestring, deepseq, filepath
, ghc-prim, hspec, lib, path, path-io, split, tasty-bench, text
, unicode-data
}:
mkDerivation {
  pname = "unicode-transforms";
  version = "0.4.0.1";
  sha256 = "3278e1e1d648da4bcd7368658ae091a89080e88a2f44db9df5136711e99649fc";
  revision = "3";
  editedCabalFile = "1hx6v04g4g1d8y8nm26k7vkhgfqmcch5xhvljlz67grw0j5d1zxd";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring ghc-prim text unicode-data
  ];
  testHaskellDepends = [
    base bytestring deepseq hspec QuickCheck split text unicode-data
  ];
  benchmarkHaskellDepends = [
    base deepseq filepath path path-io tasty-bench text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/composewell/unicode-transforms";
  description = "Unicode normalization";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, QuickCheck, base, bytestring, deepseq, filepath
, ghc-prim, hspec, lib, path, path-io, split, tasty-bench, text
, unicode-data
}:
mkDerivation {
  pname = "unicode-transforms";
  version = "0.4.0.1";
  sha256 = "3278e1e1d648da4bcd7368658ae091a89080e88a2f44db9df5136711e99649fc";
  revision = "4";
  editedCabalFile = "16d6l9ybs2wdwxdf3xfs25pzkkf3svflsn6ncvg86yky4x50zg29";
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/composewell/unicode-transforms";
  description = "Unicode normalization";
  license = lib.licenses.bsd3;
  broken = false;
}
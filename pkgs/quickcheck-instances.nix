{ mkDerivation, OneTuple, QuickCheck, array, base, bytestring
, case-insensitive, containers, data-fix, hashable
, integer-logarithms, lib, old-time, primitive, scientific
, splitmix, strict, tagged, text, text-short, these, time
, time-compat, transformers, transformers-compat
, unordered-containers, uuid-types, vector
}:
mkDerivation {
  pname = "quickcheck-instances";
  version = "0.3.29.1";
  sha256 = "b23d8256345bd17d24c48b56e273973a12a89478a790983409b9157fbce3a24b";
  revision = "1";
  editedCabalFile = "0yl09mp9phfka70z0dl0lg1c0kmf1qyh3rmbc8nzakdbs77l9fj3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring case-insensitive containers data-fix hashable
    integer-logarithms old-time OneTuple primitive QuickCheck
    scientific splitmix strict tagged text text-short these time
    time-compat transformers transformers-compat unordered-containers
    uuid-types vector
  ];
  testHaskellDepends = [
    base containers primitive QuickCheck tagged uuid-types
  ];
  benchmarkHaskellDepends = [ base bytestring QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskellari/qc-instances";
  description = "Common quickcheck instances";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, QuickCheck, array, base, bytestring, containers
, deepseq, directory, fetchgit, filepath, lib, tasty, tasty-bench
, tasty-quickcheck, time
}:
mkDerivation {
  pname = "tar";
  version = "0.6.0.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/tar";
    sha256 = "1602fyzgsf5i6lrl6jv8x00qdbm37025ms87ncl7b30dcj2dvqh7";
    rev = "107c0b78524acfd0e77e767b83073492008bea0c";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers deepseq directory filepath time
  ];
  testHaskellDepends = [
    array base bytestring containers deepseq directory filepath
    QuickCheck tasty tasty-quickcheck time
  ];
  benchmarkHaskellDepends = [
    array base bytestring containers deepseq directory filepath
    tasty-bench time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Reading, writing and manipulating \".tar\" archive files.";
  license = lib.licenses.bsd3;
  broken = false;
}
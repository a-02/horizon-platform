{ mkDerivation, HUnit, QuickCheck, array, base, bytestring
, containers, deepseq, dlist, fmlist, lib, random, text
, utf8-string, vector
}:
mkDerivation {
  pname = "ListLike";
  version = "4.7.8";
  sha256 = "9a7929f29011e5647b39b8d6ef1cadf76a6ada19b747eabec5fdc077bc7437d1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers deepseq dlist fmlist text
    utf8-string vector
  ];
  testHaskellDepends = [
    array base bytestring containers dlist fmlist HUnit QuickCheck
    random text utf8-string vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ddssff/listlike";
  description = "Generalized support for list-like structures";
  license = lib.licenses.bsd3;
  broken = false;
}
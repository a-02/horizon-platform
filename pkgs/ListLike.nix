{ mkDerivation, HUnit, QuickCheck, array, base, bytestring
, containers, deepseq, dlist, fmlist, lib, random, text
, utf8-string, vector
}:
mkDerivation {
  pname = "ListLike";
  version = "4.7.8.2";
  sha256 = "ad637af1a0241934e33e6b43ad5b3f1c4a96f84be392a7aa6066f989d1aff9d4";
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ddssff/listlike";
  description = "Generalized support for list-like structures";
  license = lib.licenses.bsd3;
  broken = false;
}
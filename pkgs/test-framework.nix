{ mkDerivation, HUnit, QuickCheck, ansi-terminal, ansi-wl-pprint
, base, bytestring, containers, hostname, lib, libxml, old-locale
, random, regex-posix, semigroups, time, xml
}:
mkDerivation {
  pname = "test-framework";
  version = "0.8.2.0";
  sha256 = "f5aec7a15dbcb39e951bcf6502606fd99d751197b5510f41706899aa7e660ac2";
  revision = "8";
  editedCabalFile = "1sal1qqvc8c1rvsqz292bniy1kr5rx6ll7z9chwsz6j2ncw5sgmg";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal ansi-wl-pprint base containers hostname old-locale
    random regex-posix time xml
  ];
  testHaskellDepends = [
    ansi-terminal ansi-wl-pprint base bytestring containers hostname
    HUnit libxml old-locale QuickCheck random regex-posix semigroups
    time xml
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://haskell.github.io/test-framework/";
  description = "Framework for running and organising tests, with HUnit and QuickCheck support";
  license = lib.licenses.bsd3;
  broken = false;
}
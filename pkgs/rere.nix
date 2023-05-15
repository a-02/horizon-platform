{ mkDerivation, QuickCheck, aeson, attoparsec, base, bytestring
, clock, containers, criterion, derp, fetchgit, fin, lib, parsec
, quickcheck-instances, tasty, tasty-quickcheck, transformers, vec
}:
mkDerivation {
  pname = "rere";
  version = "0.2";
  src = fetchgit {
    url = "https://github.com/phadej/rere";
    sha256 = "114i6z7rskynf2dnnq13wsi5di3m4m4zw4mf64qvfxrmry3kci1f";
    rev = "5173ca929506b0cb9751fce5635164fcb36d7467";
    fetchSubmodules = true;
  };
  revision = "3";
  editedCabalFile = "01d112sii06yz06lpw5i7q3v4gshha9f0d7vpdc0yj2v34f45crv";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers fin parsec QuickCheck transformers vec
  ];
  testHaskellDepends = [
    base containers QuickCheck quickcheck-instances tasty
    tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    aeson attoparsec base bytestring clock containers criterion derp
    fin parsec vec
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Regular-expressions extended with fixpoints for context-free powers";
  license = lib.licenses.bsd3;
  broken = false;
}
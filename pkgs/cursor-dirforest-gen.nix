{ mkDerivation, QuickCheck, base, containers, criterion, cursor
, cursor-dirforest, cursor-gen, dirforest, fetchgit, filepath
, genvalidity, genvalidity-containers, genvalidity-criterion
, genvalidity-dirforest, genvalidity-hspec
, genvalidity-hspec-optics, hspec, lib, path
}:
mkDerivation {
  pname = "cursor-dirforest-gen";
  version = "0.0.0.0";
  src = fetchgit {
    url = "https://github.com/NorfairKing/cursor-dirforest";
    sha256 = "0miy6chdyi8jjfivcpigyglhlx6x7f676n47vybjnpdhggv0kh2j";
    rev = "6ad5b168e26eb4e647df9f007d812aaf59338d40";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cursor-dirforest-gen/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers cursor cursor-dirforest cursor-gen dirforest
    filepath genvalidity genvalidity-containers genvalidity-dirforest
    path QuickCheck
  ];
  testHaskellDepends = [
    base cursor cursor-dirforest cursor-gen dirforest genvalidity-hspec
    genvalidity-hspec-optics hspec path QuickCheck
  ];
  benchmarkHaskellDepends = [
    base criterion cursor-dirforest genvalidity-criterion QuickCheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/cursor-dirforest#readme";
  license = lib.licenses.mit;
  broken = false;
}
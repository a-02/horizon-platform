{ mkDerivation, base, brick, containers, cursor, cursor-brick
, cursor-dirforest, dirforest, fetchgit, lib, vty
}:
mkDerivation {
  pname = "cursor-dirforest-brick";
  version = "0.0.0.0";
  src = fetchgit {
    url = "https://github.com/NorfairKing/cursor-dirforest";
    sha256 = "0miy6chdyi8jjfivcpigyglhlx6x7f676n47vybjnpdhggv0kh2j";
    rev = "6ad5b168e26eb4e647df9f007d812aaf59338d40";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cursor-dirforest-brick/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base brick containers cursor cursor-brick cursor-dirforest
    dirforest vty
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/cursor-dirforest#readme";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation
, ansi-terminal
, base
, containers
, lib
, optparse-applicative
, stm
, tagged
, transformers
, unix
}:
mkDerivation {
  pname = "tasty";
  version = "1.4.3";
  sha256 = "f420da9560267271dce8a0007a1cb77c06987f0d129eb0f613110ce61f71cb00";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal
    base
    containers
    optparse-applicative
    stm
    tagged
    transformers
    unix
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/UnkindPartition/tasty";
  description = "Modern and extensible testing framework";
  license = lib.licenses.mit;
  broken = false;
}

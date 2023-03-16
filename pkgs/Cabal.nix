{ mkDerivation
, Cabal-syntax
, array
, base
, bytestring
, containers
, deepseq
, directory
, filepath
, lib
, mtl
, parsec
, pretty
, process
, text
, time
, transformers
, unix
}:
mkDerivation {
  pname = "Cabal";
  version = "3.10.1.0";
  sha256 = "0bdbab8e4c3178016fb0f070d8b62bc3067f93afabfbd3aa17c8065d0ecc98ee";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ mtl parsec ];
  libraryHaskellDepends = [
    array
    base
    bytestring
    Cabal-syntax
    containers
    deepseq
    directory
    filepath
    mtl
    parsec
    pretty
    process
    text
    time
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
  homepage = "http://www.haskell.org/cabal/";
  description = "A framework for packaging Haskell software";
  license = lib.licenses.bsd3;
  broken = false;
}

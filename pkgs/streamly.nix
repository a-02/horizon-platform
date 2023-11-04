{ mkDerivation, atomic-primops, base, containers, deepseq
, directory, exceptions, hashable, heaps, lib, lockfree-queue
, monad-control, mtl, network, streamly-core, template-haskell
, transformers, transformers-base, unicode-data
, unordered-containers
}:
mkDerivation {
  pname = "streamly";
  version = "0.9.0";
  sha256 = "ec7735826f0a203ac1eaef4f4bd4c587b3868098af6e0dde65e02a910def92da";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    atomic-primops base containers deepseq directory exceptions
    hashable heaps lockfree-queue monad-control mtl network
    streamly-core template-haskell transformers transformers-base
    unicode-data unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://streamly.composewell.com";
  description = "Streaming, dataflow programming and declarative concurrency";
  license = lib.licenses.bsd3;
  broken = false;
}
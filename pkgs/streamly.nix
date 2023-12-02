{ mkDerivation, atomic-primops, base, containers, deepseq
, directory, exceptions, hashable, heaps, lib, lockfree-queue
, monad-control, mtl, network, streamly-core, template-haskell
, transformers, unicode-data, unordered-containers
}:
mkDerivation {
  pname = "streamly";
  version = "0.10.0";
  sha256 = "cfe4643d354fba1c7ad781f80c6d89db61c6895d4f5cdde2cf7875f2ef88ef56";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    atomic-primops base containers deepseq directory exceptions
    hashable heaps lockfree-queue monad-control mtl network
    streamly-core template-haskell transformers unicode-data
    unordered-containers
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
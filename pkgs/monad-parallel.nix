{ mkDerivation
, base
, lib
, parallel
, transformers
, transformers-compat
}:
mkDerivation {
  pname = "monad-parallel";
  version = "0.8";
  sha256 = "44658c1d4036a390a6c6597866e212f73c058ac3b369b8763e0f10c2382b20c9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    parallel
    transformers
    transformers-compat
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hub.darcs.net/blamario/SCC.wiki/";
  description = "Parallel execution of monadic computations";
  license = lib.licenses.bsd3;
  broken = false;
}

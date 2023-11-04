{ mkDerivation, QuickCheck, base, containers, fetchgit, ghc-prim
, hspec, lib, mmorph, mtl, transformers, transformers-base
}:
mkDerivation {
  pname = "streaming";
  version = "0.2.3.1";
  src = fetchgit {
    url = "https://github.com/haskell-streaming/streaming";
    sha256 = "193qwgzpd6ryzi3sl3x6bc5kk47whqhw0mfr0jqfdwrspj50ccdd";
    rev = "b6ec199103c078a07b3dcd197ab39020b2136426";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers ghc-prim mmorph mtl transformers transformers-base
  ];
  testHaskellDepends = [ base hspec QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-streaming/streaming";
  description = "an elementary streaming prelude and general stream type";
  license = lib.licenses.bsd3;
  broken = false;
}
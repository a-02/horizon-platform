{ mkDerivation, async, base, constraints, containers, contravariant
, exceptions, ghc-compact, ghc-prim, hspec, hspec-discover, lib
, mtl, polysemy, polysemy-plugin, random, reflection, streaming
, text, transformers
}:
mkDerivation {
  pname = "polysemy-zoo";
  version = "0.8.1.0";
  sha256 = "2d786f3e178f49a17d7d0e21b58a763da1a032ef8136b492700f3856ef94145d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async base constraints containers contravariant exceptions
    ghc-compact ghc-prim mtl polysemy random reflection streaming text
    transformers
  ];
  testHaskellDepends = [
    async base constraints containers contravariant exceptions
    ghc-compact ghc-prim hspec mtl polysemy polysemy-plugin random
    reflection streaming text transformers
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/isovector/polysemy-zoo#readme";
  description = "Experimental, user-contributed effects and interpreters for polysemy";
  license = lib.licenses.bsd3;
  broken = false;
}
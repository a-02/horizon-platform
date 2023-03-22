{ mkDerivation, abstract-par, base, cereal, deepseq, lib, mtl
, random, transformers
}:
mkDerivation {
  pname = "monad-par-extras";
  version = "0.3.3";
  sha256 = "e21e33190bc248afa4ae467287ac37d24037ef3de6050c44fd85b52f4d5b842e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    abstract-par base cereal deepseq mtl random transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/simonmar/monad-par";
  description = "Combinators and extra features for Par monads";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, base, containers, directory, exceptions, filepath
, fusion-plugin-types, ghc-bignum, ghc-prim, heaps, lib
, monad-control, template-haskell, transformers, unix
}:
mkDerivation {
  pname = "streamly-core";
  version = "0.2.0";
  sha256 = "9fe280b777b7b38138d9bede92c792dc7b7c23458978305663808337d7332424";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers directory exceptions filepath fusion-plugin-types
    ghc-bignum ghc-prim heaps monad-control template-haskell
    transformers unix
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://streamly.composewell.com";
  description = "Streaming, parsers, arrays and more";
  license = lib.licenses.bsd3;
  broken = false;
}
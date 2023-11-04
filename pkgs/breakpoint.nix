{ mkDerivation, ansi-terminal, base, containers, deepseq, ghc
, haskeline, lib, mtl, pretty-simple, tasty, tasty-hunit
, template-haskell, text, transformers
}:
mkDerivation {
  pname = "breakpoint";
  version = "0.1.2.2";
  sha256 = "b51a757785e5baed7a9dfb365cc79d6e519ba52b6680fc5c792eb909a682a20b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal base containers deepseq ghc haskeline mtl
    pretty-simple template-haskell text transformers
  ];
  testHaskellDepends = [ base containers tasty tasty-hunit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Set breakpoints using a GHC plugin";
  license = lib.licenses.mit;
  broken = false;
}
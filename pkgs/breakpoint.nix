{ mkDerivation, ansi-terminal, base, containers, ghc, haskeline
, lib, mtl, pretty-simple, tasty, tasty-hunit, template-haskell
, text, transformers
}:
mkDerivation {
  pname = "breakpoint";
  version = "0.1.2.1";
  sha256 = "059ac45a5d9e650d61db8167062636f0029ac6ff3c27b1fa3faccc5c195b43ae";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal base containers ghc haskeline mtl pretty-simple
    template-haskell text transformers
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
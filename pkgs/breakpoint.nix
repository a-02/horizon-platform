{ mkDerivation
, ansi-terminal
, base
, containers
, ghc
, haskeline
, lib
, mtl
, pretty-simple
, tasty
, tasty-hunit
, template-haskell
, text
, transformers
}:
mkDerivation {
  pname = "breakpoint";
  version = "0.1.1.1";
  sha256 = "e24a2cafa6ea866b571fe50bcc49fbf64c14244d985918e9ffe2c7c789d5cec3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal
    base
    containers
    ghc
    haskeline
    mtl
    pretty-simple
    template-haskell
    text
    transformers
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

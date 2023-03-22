{ mkDerivation, QuickCheck, ansi-terminal, array, base
, blaze-builder, blaze-html, blaze-markup, bytestring, charset
, comonad, containers, deepseq, fingertree, ghc-prim, hashable
, indexed-traversable, lens, lib, mtl, parsers, prettyprinter
, prettyprinter-ansi-terminal, profunctors, reducers, transformers
, unordered-containers, utf8-string
}:
mkDerivation {
  pname = "trifecta";
  version = "2.1.2";
  sha256 = "8a3a4e3367f6b62152dd4f75c52f9972082c31ed0c24a7e1d27cea574d457daa";
  revision = "1";
  editedCabalFile = "0a7cfbd04w3zbm234mmpib9mxar46ra5xvb62gcnbmixr7b343j9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal array base blaze-builder blaze-html blaze-markup
    bytestring charset comonad containers deepseq fingertree ghc-prim
    hashable indexed-traversable lens mtl parsers prettyprinter
    prettyprinter-ansi-terminal profunctors reducers transformers
    unordered-containers utf8-string
  ];
  testHaskellDepends = [ base parsers QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/trifecta/";
  description = "A modern parser combinator library with convenient diagnostics";
  license = lib.licenses.bsd3;
  broken = false;
}
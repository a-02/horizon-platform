{ mkDerivation, Cabal, HUnit, attoparsec, base, blaze-html
, blaze-markup, bytestring, cabal-doctest, conduit, conduit-extra
, containers, data-default-class, deepseq, doctest, hspec, lib
, resourcet, text, transformers, xml-types
}:
mkDerivation {
  pname = "xml-conduit";
  version = "1.9.1.1";
  sha256 = "bdb117606c0b56ca735564465b14b50f77f84c9e52e31d966ac8d4556d3ff0ff";
  revision = "2";
  editedCabalFile = "0m6sknp9xxz8a3dhvyfpyjvxp8ph511w19j4vj1qsd6hl2pazjy6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    attoparsec base blaze-html blaze-markup bytestring conduit
    conduit-extra containers data-default-class deepseq resourcet text
    transformers xml-types
  ];
  testHaskellDepends = [
    base blaze-markup bytestring conduit conduit-extra containers
    doctest hspec HUnit resourcet text transformers xml-types
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/snoyberg/xml";
  description = "Pure-Haskell utilities for dealing with XML with the conduit package";
  license = lib.licenses.mit;
  broken = false;
}
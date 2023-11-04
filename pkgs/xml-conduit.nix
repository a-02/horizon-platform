{ mkDerivation, Cabal, HUnit, attoparsec, base, blaze-html
, blaze-markup, bytestring, cabal-doctest, conduit, conduit-extra
, containers, data-default-class, deepseq, doctest, hspec, lib
, resourcet, text, transformers, xml-types
}:
mkDerivation {
  pname = "xml-conduit";
  version = "1.9.1.3";
  sha256 = "d8e9169562c71c9e6bc616f15832f521a68c362aa4fc03682748a809755f1bf4";
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/snoyberg/xml";
  description = "Pure-Haskell utilities for dealing with XML with the conduit package";
  license = lib.licenses.mit;
  broken = false;
}
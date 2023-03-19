{ mkDerivation, Decimal, Glob, aeson, aeson-pretty, ansi-terminal
, array, base, base-compat, blaze-markup, bytestring, call-stack
, cassava, cassava-megaparsec, cmdargs, colour, containers
, data-default, deepseq, directory, doclayout, doctest, extra
, file-embed, filepath, hashtables, lib, megaparsec, microlens
, microlens-th, mtl, pager, parser-combinators, pretty-simple
, regex-tdfa, safe, tabular, tasty, tasty-hunit, template-haskell
, text, text-ansi, time, timeit, transformers, uglymemo
, unordered-containers, utf8-string
}:
mkDerivation {
  pname = "hledger-lib";
  version = "1.29.1";
  sha256 = "cc20a32cad515ac87d48d1e4647525353089f41e163ce6675085e57a8f52c9a2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson aeson-pretty ansi-terminal array base base-compat
    blaze-markup bytestring call-stack cassava cassava-megaparsec
    cmdargs colour containers data-default Decimal deepseq directory
    doclayout extra file-embed filepath Glob hashtables megaparsec
    microlens microlens-th mtl pager parser-combinators pretty-simple
    regex-tdfa safe tabular tasty tasty-hunit template-haskell text
    text-ansi time timeit transformers uglymemo unordered-containers
    utf8-string
  ];
  testHaskellDepends = [
    aeson aeson-pretty ansi-terminal array base base-compat
    blaze-markup bytestring call-stack cassava cassava-megaparsec
    cmdargs colour containers data-default Decimal deepseq directory
    doclayout doctest extra file-embed filepath Glob hashtables
    megaparsec microlens microlens-th mtl pager parser-combinators
    pretty-simple regex-tdfa safe tabular tasty tasty-hunit
    template-haskell text text-ansi time timeit transformers uglymemo
    unordered-containers utf8-string
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://hledger.org";
  description = "A reusable library providing the core functionality of hledger";
  license = lib.licenses.gpl3Only;
  broken = false;
}
{ mkDerivation
, HUnit
, attoparsec
, base
, containers
, css-text
, hspec
, lib
, network-uri
, tagsoup
, text
, utf8-string
}:
mkDerivation {
  pname = "xss-sanitize";
  version = "0.3.7.1";
  sha256 = "303c15935f0e54dd0ef1b3665d307e4e74e2a3e9f8d4612a2133ac8a04f4b5d2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec
    base
    containers
    css-text
    network-uri
    tagsoup
    text
    utf8-string
  ];
  testHaskellDepends = [
    attoparsec
    base
    containers
    css-text
    hspec
    HUnit
    network-uri
    tagsoup
    text
    utf8-string
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/yesodweb/haskell-xss-sanitize#readme";
  description = "sanitize untrusted HTML to prevent XSS attacks";
  license = lib.licenses.bsd2;
  broken = false;
}

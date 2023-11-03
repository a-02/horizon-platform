{ mkDerivation, HUnit, attoparsec, base, containers, css-text
, hspec, lib, network-uri, tagsoup, text, utf8-string
}:
mkDerivation {
  pname = "xss-sanitize";
  version = "0.3.7.2";
  sha256 = "1bbb7f5be1f4590124c76458fb798bfd9bf8114dce338d5881ad89188a9dc946";
  revision = "1";
  editedCabalFile = "1l8y52nja9a2iyxawm3vp23jcs46ziwx0yj2w46drb7knaa306d0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec base containers css-text network-uri tagsoup text
    utf8-string
  ];
  testHaskellDepends = [
    attoparsec base containers css-text hspec HUnit network-uri tagsoup
    text utf8-string
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
{ mkDerivation, HUnit, base, blaze-html, bytestring, cheapskate
, criterion, discount, lib, markdown, sundown, text
}:
mkDerivation {
  pname = "cmark-gfm";
  version = "0.2.6";
  sha256 = "958cfb3bd54b1bfa9e1e2d9cd1748e76c10d2b30a3cceeab3f6a852205c1a869";
  revision = "1";
  editedCabalFile = "1385k2xvxy9ssw69g606vwnpm07sf919prciwvnaipsxiwwbjwl6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring text ];
  testHaskellDepends = [ base HUnit text ];
  benchmarkHaskellDepends = [
    base blaze-html cheapskate criterion discount markdown sundown text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kivikakk/cmark-gfm-hs";
  description = "Fast, accurate GitHub Flavored Markdown parser and renderer";
  license = lib.licenses.bsd3;
  broken = false;
}
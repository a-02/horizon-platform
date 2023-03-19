{ mkDerivation, Cabal, Glob, HUnit, QuickCheck, aeson, aeson-pretty
, base, base-compat-batteries, bytestring, cabal-doctest
, containers, cookie, doctest, generics-sop, hashable, hspec
, hspec-discover, http-media, insert-ordered-containers, lens, lib
, mtl, network, optics-core, optics-th, quickcheck-instances
, scientific, template-haskell, text, time, transformers
, unordered-containers, utf8-string, uuid-types, vector
}:
mkDerivation {
  pname = "swagger2";
  version = "2.8.6";
  sha256 = "0481821f9145310e75a8171fbc59f825d14385c83c1f8cba3bf97762194a7fb3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    aeson aeson-pretty base base-compat-batteries bytestring containers
    cookie generics-sop hashable http-media insert-ordered-containers
    lens mtl network optics-core optics-th QuickCheck scientific
    template-haskell text time transformers unordered-containers
    uuid-types vector
  ];
  testHaskellDepends = [
    aeson base base-compat-batteries bytestring containers doctest Glob
    hashable hspec HUnit insert-ordered-containers lens mtl QuickCheck
    quickcheck-instances template-haskell text time
    unordered-containers utf8-string vector
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/GetShopTV/swagger2";
  description = "Swagger 2.0 data model";
  license = lib.licenses.bsd3;
  broken = false;
}
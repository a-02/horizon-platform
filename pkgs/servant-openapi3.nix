{ mkDerivation, Cabal, QuickCheck, aeson, aeson-pretty, base
, base-compat, bytestring, cabal-doctest, directory, doctest
, filepath, hspec, hspec-discover, http-media
, insert-ordered-containers, lens, lens-aeson, lib, openapi3
, servant, singleton-bool, template-haskell, text, time
, unordered-containers, utf8-string, vector
}:
mkDerivation {
  pname = "servant-openapi3";
  version = "2.0.1.6";
  sha256 = "322a2181fb2becb20b80ad8319dd3ce1874d89cd344a8d8a4e17d1428d1dbfc3";
  revision = "2";
  editedCabalFile = "0i7brbai4dd2f2jxi1b5i824iiq5nm932zkcp6gzfxiva82m1f4f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    aeson aeson-pretty base base-compat bytestring hspec http-media
    insert-ordered-containers lens openapi3 QuickCheck servant
    singleton-bool text unordered-containers
  ];
  testHaskellDepends = [
    aeson base base-compat directory doctest filepath hspec lens
    lens-aeson openapi3 QuickCheck servant template-haskell text time
    utf8-string vector
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/biocad/servant-openapi3";
  description = "Generate a Swagger/OpenAPI/OAS 3.0 specification for your servant API.";
  license = lib.licenses.bsd3;
  broken = false;
}
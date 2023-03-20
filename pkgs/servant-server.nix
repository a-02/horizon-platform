{ mkDerivation, QuickCheck, aeson, base, base-compat
, base64-bytestring, bytestring, constraints, containers, directory
, exceptions, fetchgit, filepath, hspec, hspec-discover, hspec-wai
, http-api-data, http-media, http-types, lib, monad-control, mtl
, network, network-uri, resourcet, safe, servant
, should-not-typecheck, sop-core, string-conversions, tagged
, temporary, text, transformers, transformers-base
, transformers-compat, wai, wai-app-static, wai-extra, warp, word8
}:
mkDerivation {
  pname = "servant-server";
  version = "0.19.2";
  src = fetchgit {
    url = "https://github.com/haskell-servant/servant";
    sha256 = "0ay4q9jy3xkn5j1k91snfdndi6j91hlri9h79m429j0d8v5vnj7i";
    rev = "0cda2d0ac87dc0dd47744134e44ab0b1647fe09a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/servant-server/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base-compat base64-bytestring bytestring constraints
    containers exceptions filepath http-api-data http-media http-types
    monad-control mtl network network-uri resourcet servant sop-core
    string-conversions tagged text transformers transformers-base wai
    wai-app-static word8
  ];
  executableHaskellDepends = [
    aeson base base-compat servant text wai warp
  ];
  testHaskellDepends = [
    aeson base base-compat base64-bytestring bytestring directory hspec
    hspec-wai http-types mtl QuickCheck resourcet safe servant
    should-not-typecheck sop-core string-conversions temporary text
    transformers transformers-compat wai wai-extra
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://docs.servant.dev/";
  description = "A family of combinators for defining webservices APIs and serving them";
  license = lib.licenses.bsd3;
  broken = false;
}
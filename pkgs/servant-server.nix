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
    sha256 = "0ck3l8nj42nan8abdzvkl4ynb2l9nhnsq2zjl24d7sgca860fi57";
    rev = "7ae787371333556a7b84778631ed91d1d73e8370";
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
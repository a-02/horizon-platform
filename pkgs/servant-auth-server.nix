{ mkDerivation, QuickCheck, aeson, base, base64-bytestring
, blaze-builder, bytestring, case-insensitive, cookie
, data-default-class, entropy, fetchgit, hspec, hspec-discover
, http-client, http-types, jose, lens, lens-aeson, lib
, markdown-unlit, memory, monad-time, mtl, servant, servant-auth
, servant-server, tagged, text, time, transformers
, unordered-containers, wai, warp, wreq
}:
mkDerivation {
  pname = "servant-auth-server";
  version = "0.4.7.0";
  src = fetchgit {
    url = "https://github.com/haskell-servant/servant";
    sha256 = "0ck3l8nj42nan8abdzvkl4ynb2l9nhnsq2zjl24d7sgca860fi57";
    rev = "7ae787371333556a7b84778631ed91d1d73e8370";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/servant-auth/servant-auth-server/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base64-bytestring blaze-builder bytestring
    case-insensitive cookie data-default-class entropy http-types jose
    lens memory monad-time mtl servant servant-auth servant-server
    tagged text time unordered-containers wai
  ];
  testHaskellDepends = [
    aeson base bytestring case-insensitive hspec http-client http-types
    jose lens lens-aeson mtl QuickCheck servant servant-auth
    servant-server text time transformers wai warp wreq
  ];
  testToolDepends = [ hspec-discover markdown-unlit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-servant/servant/tree/master/servant-auth#readme";
  description = "servant-server/servant-auth compatibility";
  license = lib.licenses.bsd3;
  broken = false;
}
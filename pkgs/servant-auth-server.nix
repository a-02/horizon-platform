{ mkDerivation, QuickCheck, aeson, base, base64-bytestring
, blaze-builder, bytestring, case-insensitive, cookie
, data-default-class, entropy, hspec, hspec-discover, http-client
, http-types, jose, lens, lens-aeson, lib, markdown-unlit, memory
, monad-time, mtl, servant, servant-auth, servant-server, tagged
, text, time, transformers, unordered-containers, wai, warp, wreq
}:
mkDerivation {
  pname = "servant-auth-server";
  version = "0.4.8.0";
  sha256 = "4e095626036c8e953dd7d5e2b1ef3424935ea2ec35a8dee74dc168296af23637";
  revision = "4";
  editedCabalFile = "1cib954pc6x4qawyizxlr9qg9838rahyihdiv4qiz09i19m8n6zj";
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-servant/servant/tree/master/servant-auth#readme";
  description = "servant-server/servant-auth compatibility";
  license = lib.licenses.bsd3;
  broken = false;
}
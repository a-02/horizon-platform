{ mkDerivation, base, bytestring, directory, http-types, lens, lib
, resourcet, servant, servant-docs, servant-foreign
, servant-multipart-api, servant-server, string-conversions, tasty
, tasty-wai, text, wai, wai-extra
}:
mkDerivation {
  pname = "servant-multipart";
  version = "0.12.1";
  sha256 = "c5236fa4922a869947988d52ab9f5b0a19abf57bb0467e2eb34560f8c79aa5dc";
  revision = "5";
  editedCabalFile = "0pf761m9l6jnqhljjj4i6zr9il8r9ajpqfxzqjgjsnbsg6872ykg";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring directory lens resourcet servant servant-docs
    servant-foreign servant-multipart-api servant-server
    string-conversions text wai wai-extra
  ];
  testHaskellDepends = [
    base bytestring http-types servant-server string-conversions tasty
    tasty-wai text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-servant/servant-multipart#readme";
  description = "multipart/form-data (e.g file upload) support for servant";
  license = lib.licenses.bsd3;
  broken = false;
}
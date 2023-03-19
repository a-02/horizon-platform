{ mkDerivation, base, bytestring, lib, servant, text, transformers
}:
mkDerivation {
  pname = "servant-multipart-api";
  version = "0.12.1";
  sha256 = "92d5c3b1ccbcde7abcff6eb639d7dbb836222452a965e73ebd40bf775e522ebe";
  revision = "3";
  editedCabalFile = "1zhiszjg8n37g25sh2cnw509n0v4b89fd93j466f2gzwkxfaaw0m";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring servant text transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-servant/servant-multipart#readme";
  description = "multipart/form-data (e.g file upload) support for servant";
  license = lib.licenses.bsd3;
  broken = false;
}
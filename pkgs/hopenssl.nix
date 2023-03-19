{ mkDerivation, HUnit, base, bytestring, lib, openssl }:
mkDerivation {
  pname = "hopenssl";
  version = "2.2.5";
  sha256 = "750f9861124b024d3464e05f9527b423f41f24460127a360786d6d441dc103bf";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ];
  librarySystemDepends = [ openssl ];
  testHaskellDepends = [ base bytestring HUnit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/peti/hopenssl";
  description = "FFI Bindings to OpenSSL's EVP Digest Interface";
  license = lib.licenses.bsd3;
  broken = false;
}
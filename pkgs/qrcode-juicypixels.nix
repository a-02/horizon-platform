{ mkDerivation, JuicyPixels, base, base64-bytestring, bytestring
, lib, qrcode-core, text, vector
}:
mkDerivation {
  pname = "qrcode-juicypixels";
  version = "0.8.5";
  sha256 = "6f594f2e03c5aec83e3244919a2032a3a74ad1fc16919e0527a0fb784e6cec61";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base64-bytestring bytestring JuicyPixels qrcode-core text
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/alexkazik/qrcode#readme";
  description = "Converts a qrcode-core image to JuicyPixels";
  license = lib.licenses.mit;
  broken = false;
}
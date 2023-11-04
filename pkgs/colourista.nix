{ mkDerivation, ansi-terminal, base, bytestring, hspec, lib, text
}:
mkDerivation {
  pname = "colourista";
  version = "0.1.0.2";
  sha256 = "96afae0b54b12205a9871ecb4c7ee173e8b9f05363d843c15d373d394d08063c";
  revision = "3";
  editedCabalFile = "1q07rz48xrs68gg3pywdivw2m97xbgcb4337jfzdsb0wv6n8z2r5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ ansi-terminal base bytestring text ];
  testHaskellDepends = [ base bytestring hspec text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kowainik/colourista";
  description = "Convenient interface for printing colourful messages";
  license = lib.licenses.mpl20;
  broken = false;
}
{ mkDerivation, base, bytestring, hspec, hspec-discover, http-types
, lib, network, text, vault
}:
mkDerivation {
  pname = "wai";
  version = "3.2.3";
  sha256 = "5574d6541000988fe204d3032db87fd0a5404cdbde33ee4fa02e6006768229f8";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring http-types network text vault
  ];
  testHaskellDepends = [ base bytestring hspec ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/yesodweb/wai";
  description = "Web Application Interface";
  license = lib.licenses.mit;
  broken = false;
}
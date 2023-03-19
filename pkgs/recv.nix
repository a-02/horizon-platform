{ mkDerivation, base, bytestring, hspec, hspec-discover, lib
, network
}:
mkDerivation {
  pname = "recv";
  version = "0.1.0";
  sha256 = "f664905cffb44b7f9cba604cd75bd69011a666ba06bccbcb7f3fae0cd4f14d5b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring network ];
  testHaskellDepends = [ base bytestring hspec network ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/yesodweb/wai";
  description = "Efficient network recv";
  license = lib.licenses.bsd3;
  broken = false;
}
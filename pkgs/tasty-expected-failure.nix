{ mkDerivation, base, hedgehog, lib, tagged, tasty, tasty-golden
, tasty-hedgehog, tasty-hunit, unbounded-delays
}:
mkDerivation {
  pname = "tasty-expected-failure";
  version = "0.12.3";
  sha256 = "cb07cc5ca62a6fd673ef54ae70b4bc5f9c12662fe835bea1f38b944684ee8f7e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base tagged tasty unbounded-delays ];
  testHaskellDepends = [
    base hedgehog tasty tasty-golden tasty-hedgehog tasty-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/nomeata/tasty-expected-failure";
  description = "Mark tasty tests as failure expected";
  license = lib.licenses.mit;
  broken = false;
}
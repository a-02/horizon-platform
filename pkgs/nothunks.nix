{ mkDerivation, base, bytestring, containers, ghc-heap, ghc-prim
, hedgehog, lib, random, stm, tasty, tasty-hedgehog, text, time
, vector
}:
mkDerivation {
  pname = "nothunks";
  version = "0.1.4";
  sha256 = "888a02eb74d70b39372421020420924cf746afcffd370b99535ada562faa1375";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers ghc-heap stm text time vector
  ];
  testHaskellDepends = [
    base containers ghc-prim hedgehog random stm tasty tasty-hedgehog
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Examine values for unexpected thunks";
  license = lib.licenses.asl20;
  broken = false;
}
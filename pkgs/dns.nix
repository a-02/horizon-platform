{ mkDerivation, QuickCheck, array, async, attoparsec, auto-update
, base, base16-bytestring, base64-bytestring, bytestring
, case-insensitive, containers, crypton, hourglass, hspec
, hspec-discover, iproute, lib, mtl, network, psqueues, word8
}:
mkDerivation {
  pname = "dns";
  version = "4.2.0";
  sha256 = "c2d3ce5315a89ce2e362877928e5698159c898c29cb97f10506779ba0db497f9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array async attoparsec auto-update base base16-bytestring
    base64-bytestring bytestring case-insensitive containers crypton
    hourglass iproute mtl network psqueues
  ];
  testHaskellDepends = [
    base bytestring case-insensitive hspec iproute network QuickCheck
    word8
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  testTarget = "spec";
  hyperlinkSource = false;
  description = "DNS library in Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
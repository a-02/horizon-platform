{ mkDerivation, QuickCheck, base, bytestring, criterion, lib
, quickcheck-instances, rerebase, tasty, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "bytestring-strict-builder";
  version = "0.4.5.6";
  sha256 = "7c9261ff2d10eb141fead8eb57f51fec14b28e753084c7a07fc319776531117f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ];
  testHaskellDepends = [
    QuickCheck quickcheck-instances rerebase tasty tasty-hunit
    tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ criterion rerebase ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/bytestring-strict-builder";
  description = "An efficient strict bytestring builder";
  license = lib.licenses.mit;
  broken = false;
}
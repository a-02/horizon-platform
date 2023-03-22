{ mkDerivation, HUnit, QuickCheck, base, bytestring, deepseq
, ghc-prim, lib, test-framework, test-framework-hunit
, test-framework-quickcheck2, text, utf8-string
}:
mkDerivation {
  pname = "blaze-builder";
  version = "0.4.2.2";
  sha256 = "2cdc998c021d3a5f2a66a95138b93386271c26a117e7676d78264a90e536af67";
  revision = "1";
  editedCabalFile = "026vxh94h2hwncy1mn51xzfpnhj8ijp5xc8fpq7dwc63fkrps0gh";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring deepseq ghc-prim text ];
  testHaskellDepends = [
    base bytestring HUnit QuickCheck test-framework
    test-framework-hunit test-framework-quickcheck2 text utf8-string
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/blaze-builder/blaze-builder";
  description = "Efficient buffered output";
  license = lib.licenses.bsd3;
  broken = false;
}
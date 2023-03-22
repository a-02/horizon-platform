{ mkDerivation, HUnit, QuickCheck, base, blaze-builder
, blaze-markup, bytestring, containers, lib, test-framework
, test-framework-hunit, test-framework-quickcheck2, text
}:
mkDerivation {
  pname = "blaze-html";
  version = "0.9.1.2";
  sha256 = "60503f42546c6c1b954014d188ea137e43d74dcffd2bf6157c113fd91a0c394c";
  revision = "2";
  editedCabalFile = "1hjxvz62wlg0x7svc51zascgc96f5ly9xkkiyllgb4aqcvx9zf3l";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base blaze-builder blaze-markup bytestring text
  ];
  testHaskellDepends = [
    base blaze-builder blaze-markup bytestring containers HUnit
    QuickCheck test-framework test-framework-hunit
    test-framework-quickcheck2 text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://jaspervdj.be/blaze";
  description = "A blazingly fast HTML combinator library for Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
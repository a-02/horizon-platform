{ mkDerivation, QuickCheck, base, binary, bytestring, deepseq, lib
, template-haskell, test-framework, test-framework-quickcheck2
}:
mkDerivation {
  pname = "half";
  version = "0.3.1";
  sha256 = "e2afc32724e11bf5c695d797b9169d9d9b2dc62a530aed31284c8187af1615d1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base binary deepseq template-haskell ];
  testHaskellDepends = [
    base binary bytestring QuickCheck test-framework
    test-framework-quickcheck2
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/half";
  description = "Half-precision floating-point";
  license = lib.licenses.bsd3;
  broken = false;
}
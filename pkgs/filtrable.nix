{ mkDerivation
, base
, containers
, lib
, smallcheck
, tasty
, tasty-smallcheck
, transformers
}:
mkDerivation {
  pname = "filtrable";
  version = "0.1.6.0";
  sha256 = "be40b79abd9b6563a0146069b22313a4a7b8fb8cf7e3c4bc62fb7725f9a11215";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers transformers ];
  testHaskellDepends = [ base smallcheck tasty tasty-smallcheck ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/strake/filtrable.hs";
  description = "Class of filtrable containers";
  license = lib.licenses.bsd3;
  broken = false;
}

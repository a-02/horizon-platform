{ mkDerivation, HUnit, base, doctest, generic-lens-core
, inspection-testing, lib, optics-core, text
}:
mkDerivation {
  pname = "generic-optics";
  version = "2.2.1.0";
  sha256 = "5f1c422a22277d5f0fb5fb7493789e02b13e6d5b36ecd33fd44e8796e75a87af";
  revision = "1";
  editedCabalFile = "13wkbs8x0clkqzi4xqin89qywpky8jkpz9cxgwsglbpcyw11jvgq";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base generic-lens-core optics-core text
  ];
  testHaskellDepends = [
    base doctest HUnit inspection-testing optics-core
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kcsongor/generic-lens";
  description = "Generically derive traversals, lenses and prisms";
  license = lib.licenses.bsd3;
  broken = false;
}
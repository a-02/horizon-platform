{ mkDerivation, HUnit, base, doctest, generic-lens-core
, inspection-testing, lib, optics-core, text
}:
mkDerivation {
  pname = "generic-optics";
  version = "2.2.1.0";
  sha256 = "5f1c422a22277d5f0fb5fb7493789e02b13e6d5b36ecd33fd44e8796e75a87af";
  revision = "2";
  editedCabalFile = "08g71y2wdmfqfygzyazyzd7n9768dxbam329n31f2jidd7p8yk02";
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kcsongor/generic-lens";
  description = "Generically derive traversals, lenses and prisms";
  license = lib.licenses.bsd3;
  broken = false;
}
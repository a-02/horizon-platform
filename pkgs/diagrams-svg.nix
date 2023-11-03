{ mkDerivation, JuicyPixels, base, base64-bytestring, bytestring
, colour, containers, diagrams-core, diagrams-lib, filepath
, hashable, lens, lib, monoid-extras, mtl, optparse-applicative
, semigroups, split, svg-builder, text
}:
mkDerivation {
  pname = "diagrams-svg";
  version = "1.4.3.1";
  sha256 = "67080a0aa846f2931c14855560c4bbd848c44935f5ada4dbd6d93074707d5400";
  revision = "5";
  editedCabalFile = "00hjvv9ncf5il7a09g2gh45bwah4jbnfnhb523jz9lhqqbzxfxny";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base64-bytestring bytestring colour containers diagrams-core
    diagrams-lib filepath hashable JuicyPixels lens monoid-extras mtl
    optparse-applicative semigroups split svg-builder text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://diagrams.github.io/";
  description = "SVG backend for diagrams drawing EDSL";
  license = lib.licenses.bsd3;
  broken = false;
}
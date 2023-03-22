{ mkDerivation, Chart, SVGFonts, base, blaze-markup, bytestring
, colour, containers, data-default-class, diagrams-core
, diagrams-lib, diagrams-postscript, diagrams-svg, lens, lib, mtl
, old-locale, operational, svg-builder, text, time
}:
mkDerivation {
  pname = "Chart-diagrams";
  version = "1.9.4";
  sha256 = "a89cb7aee51fc64276923b879b7bc66fafd994130f53a3035ff6feaf9daf7366";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base blaze-markup bytestring Chart colour containers
    data-default-class diagrams-core diagrams-lib diagrams-postscript
    diagrams-svg lens mtl old-locale operational svg-builder SVGFonts
    text time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/timbod7/haskell-chart/wiki";
  description = "Diagrams backend for Charts";
  license = lib.licenses.bsd3;
  broken = false;
}
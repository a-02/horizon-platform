{ mkDerivation, Chart, SVGFonts, base, blaze-markup, bytestring
, colour, containers, data-default-class, diagrams-core
, diagrams-lib, diagrams-postscript, diagrams-svg, lens, lib, mtl
, old-locale, operational, svg-builder, text, time
}:
mkDerivation {
  pname = "Chart-diagrams";
  version = "1.9.5.1";
  sha256 = "f8dcd91926e6f46b47a21a131650f1dc026e410a63f276ff52ba092aab7662de";
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/timbod7/haskell-chart/wiki";
  description = "Diagrams backend for Charts";
  license = lib.licenses.bsd3;
  broken = false;
}
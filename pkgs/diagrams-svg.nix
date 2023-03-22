{ mkDerivation, JuicyPixels, base, base64-bytestring, bytestring
, colour, containers, diagrams-core, diagrams-lib, filepath
, hashable, lens, lib, monoid-extras, mtl, optparse-applicative
, semigroups, split, svg-builder, text
}:
mkDerivation {
  pname = "diagrams-svg";
  version = "1.4.3.1";
  sha256 = "67080a0aa846f2931c14855560c4bbd848c44935f5ada4dbd6d93074707d5400";
  revision = "4";
  editedCabalFile = "026mkj9fz64rdrap25mp8cwdrzwj90h35qg9kkn078fac93aaq10";
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
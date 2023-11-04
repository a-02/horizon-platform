{ mkDerivation, base, bytestring, containers, data-default-class
, diagrams-core, diagrams-lib, hashable, lens, lib, monoid-extras
, mtl, semigroups, split, statestack
}:
mkDerivation {
  pname = "diagrams-postscript";
  version = "1.5.1.1";
  sha256 = "842afeee6f4895d9b3d49d21118428c1f85594a76fbf89d84b2ee23101088bcf";
  revision = "1";
  editedCabalFile = "0h6wkzncxcz8pjqqr696y3m6d3xbsm5n5d5r4pfx7b81kq53l6x8";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers data-default-class diagrams-core
    diagrams-lib hashable lens monoid-extras mtl semigroups split
    statestack
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://diagrams.github.io/";
  description = "Postscript backend for diagrams drawing EDSL";
  license = lib.licenses.bsd3;
  broken = false;
}
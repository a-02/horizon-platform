{ mkDerivation, base, containers, data-default-class, lens, lib
, linear
}:
mkDerivation {
  pname = "force-layout";
  version = "0.4.0.6";
  sha256 = "f7729855b1b14e0b255325faaca9f4834004e02bd21def6a865d2c55c734259d";
  revision = "11";
  editedCabalFile = "1l6v0yy0bb72k0gp58s8vykxyj8qncijax7ds42wgfn378ry8w4j";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers data-default-class lens linear
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Simple force-directed layout";
  license = lib.licenses.bsd3;
  broken = false;
}
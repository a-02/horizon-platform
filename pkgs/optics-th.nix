{ mkDerivation, base, containers, lib, mtl, optics-core, tagged
, template-haskell, th-abstraction, transformers
}:
mkDerivation {
  pname = "optics-th";
  version = "0.4.1";
  sha256 = "d73857b79dcd8f7c7e70fa4727f134145b62902e8d3e448f8b25c38a9da4fd17";
  revision = "5";
  editedCabalFile = "0a9h1bll1m9v40cv7ifv2sy3k6sfcq325s7cpk33wh65awf5zpl7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers mtl optics-core template-haskell th-abstraction
    transformers
  ];
  testHaskellDepends = [ base optics-core tagged ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Optics construction using TemplateHaskell";
  license = lib.licenses.bsd3;
  broken = false;
}
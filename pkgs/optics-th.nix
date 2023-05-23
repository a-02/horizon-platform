{ mkDerivation, base, containers, lib, mtl, optics-core, tagged
, template-haskell, th-abstraction, transformers
}:
mkDerivation {
  pname = "optics-th";
  version = "0.4.1";
  sha256 = "d73857b79dcd8f7c7e70fa4727f134145b62902e8d3e448f8b25c38a9da4fd17";
  revision = "4";
  editedCabalFile = "0l9kafjxrqnkqqb2mdwc6rjhhyp7j5mabaxzmgq6fzl8cr9qbjfk";
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
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Optics construction using TemplateHaskell";
  license = lib.licenses.bsd3;
  broken = false;
}
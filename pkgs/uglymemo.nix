{ mkDerivation, base, containers, lib }:
mkDerivation {
  pname = "uglymemo";
  version = "0.1.0.1";
  sha256 = "fe89ef49c0cb15867c58815b050b33f17d394d4c48a9b7240a39780a5a79b847";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A simple (but internally ugly) memoization function";
  license = lib.licenses.publicDomain;
  broken = false;
}
{ mkDerivation, base, csv, html, lib, mtl }:
mkDerivation {
  pname = "tabular";
  version = "0.2.2.8";
  sha256 = "cb7d06eaec7945cd77db2380ed4a9b7a048c5f6abcfba766c328228be033237d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base csv html mtl ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/bgamari/tabular";
  description = "Two-dimensional data tables with rendering functions";
  license = lib.licenses.bsd3;
  broken = false;
}
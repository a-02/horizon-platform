{ mkDerivation, base, lib, mtl, process, strict }:
mkDerivation {
  pname = "Hclip";
  version = "3.0.0.4";
  sha256 = "d8c80bd2d035571cd76ce4f69453e9fcef4096dbc8868eb4cfcd7eb74fe5f712";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base mtl process strict ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jetho/Hclip";
  description = "A small cross-platform library for reading and modifying the system clipboard";
  license = lib.licenses.bsd3;
  broken = false;
}
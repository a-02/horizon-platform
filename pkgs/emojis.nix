{ mkDerivation, HUnit, base, containers, lib, text }:
mkDerivation {
  pname = "emojis";
  version = "0.1.3";
  sha256 = "817fc6c4d0040418d981b82349e389566db6ce0e0337dc70fe5d1483e1d91af8";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers text ];
  testHaskellDepends = [ base HUnit text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jgm/emojis#readme";
  description = "Conversion between emoji characters and their names";
  license = lib.licenses.bsd3;
  broken = false;
}
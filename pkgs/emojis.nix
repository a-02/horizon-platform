{ mkDerivation, HUnit, base, containers, lib, text }:
mkDerivation {
  pname = "emojis";
  version = "0.1.2";
  sha256 = "3cfe9c2ea3efbbdb9b7fc24ee6707a839d272c1deee7e39319f17a7e6feea227";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers text ];
  testHaskellDepends = [ base HUnit text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jgm/emojis#readme";
  description = "Conversion between emoji characters and their names";
  license = lib.licenses.bsd3;
  broken = false;
}
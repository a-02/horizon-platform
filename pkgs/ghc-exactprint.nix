{ mkDerivation, Cabal-syntax, Diff, HUnit, base, bytestring
, containers, data-default, directory, fail, filemanip, filepath
, free, ghc, ghc-boot, ghc-paths, lib, mtl, ordered-containers
, silently, syb
}:
mkDerivation {
  pname = "ghc-exactprint";
  version = "1.6.1.1";
  sha256 = "8883b247ca97c8720c047b820941c1119c4537c0121b21b02cca441ea12df437";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers data-default directory fail filepath
    free ghc ghc-boot mtl ordered-containers syb
  ];
  testHaskellDepends = [
    base bytestring Cabal-syntax containers data-default Diff directory
    fail filemanip filepath ghc ghc-boot ghc-paths HUnit mtl
    ordered-containers silently syb
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "ExactPrint for GHC";
  license = lib.licenses.bsd3;
  broken = false;
}
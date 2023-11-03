{ mkDerivation, Cabal-syntax, Diff, HUnit, base, bytestring
, containers, data-default, directory, fail, filemanip, filepath
, free, ghc, ghc-boot, ghc-paths, lib, mtl, ordered-containers
, silently, syb
}:
mkDerivation {
  pname = "ghc-exactprint";
  version = "1.6.1.3";
  sha256 = "feba1ec1d3df0822ecfb74cfa6221f3c0966419919fa508b031492dc523a4be3";
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
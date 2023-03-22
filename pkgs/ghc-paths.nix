{ mkDerivation, Cabal, base, directory, lib }:
mkDerivation {
  pname = "ghc-paths";
  version = "0.1.0.12";
  sha256 = "6ecbe676d073cb07989c61ce4c5709c4e67cbefdd2d55a4095f9388b6fe2c484";
  revision = "5";
  editedCabalFile = "12y71qx0yjxxjjzvkpx12ld0fkmpkli8qxpfxp3xfnz8w0gxbv9c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal directory ];
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Knowledge of GHC's installation directories";
  license = lib.licenses.bsd3;
  broken = false;
}
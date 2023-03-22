{ mkDerivation, base, deepseq, lib }:
mkDerivation {
  pname = "spoon";
  version = "0.3.1";
  sha256 = "b9b350b6730e34c246bbf7e228a86b3d4925b52c95542f7676d719ef2a9881d4";
  revision = "1";
  editedCabalFile = "09s5jjcsg4g4qxchq9g2l4i9d5zh3rixpkbiysqcgl69kj8mwv74";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Catch errors thrown from pure computations";
  license = lib.licenses.bsd3;
  broken = false;
}
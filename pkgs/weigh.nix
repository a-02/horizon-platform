{ mkDerivation, base, deepseq, ghc, lib, mtl, process, split
, temporary
}:
mkDerivation {
  pname = "weigh";
  version = "0.0.16";
  sha256 = "a92a19209b6e8999be21fed8c6ddad8cddf5b98352341b58d2c3e3ef4e96eb8e";
  revision = "1";
  editedCabalFile = "0y71p1fg2q9ig955b21fhfaipdamdrlzfl302prqz8g0sfcxvmfg";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base deepseq ghc mtl process split temporary
  ];
  testHaskellDepends = [ base deepseq ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fpco/weigh#readme";
  description = "Measure allocations of a Haskell functions/values";
  license = lib.licenses.bsd3;
  broken = false;
}
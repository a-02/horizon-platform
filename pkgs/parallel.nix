{ mkDerivation, array, base, containers, deepseq, ghc-prim, lib }:
mkDerivation {
  pname = "parallel";
  version = "3.2.2.0";
  sha256 = "170453a71a2a8b31cca63125533f7771d7debeb639700bdabdd779c34d8a6ef6";
  revision = "6";
  editedCabalFile = "1f14frciafrs63a581lm7s1zxv71wa04ydzf80gldfi7x73c6ln6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ array base containers deepseq ghc-prim ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Parallel programming library";
  license = lib.licenses.bsd3;
  broken = false;
}
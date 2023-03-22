{ mkDerivation, base, deepseq, hashable, lib }:
mkDerivation {
  pname = "data-fix";
  version = "0.3.2";
  sha256 = "3a172d3bc0639c327345e965f9d9023e099425814b28dcdb7b60ff66d66219cc";
  revision = "4";
  editedCabalFile = "1s9xivrnsp5n7jhflz4h4vzwwdcxal7kwchpaa982m8pfr23ayy2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq hashable ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/spell-music/data-fix";
  description = "Fixpoint data types";
  license = lib.licenses.bsd3;
  broken = false;
}
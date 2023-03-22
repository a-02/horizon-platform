{ mkDerivation, StateVar, base, lib, transformers }:
mkDerivation {
  pname = "contravariant";
  version = "1.5.5";
  sha256 = "062fd66580d7aad0b5ba93e644ffa7feee69276ef50f20d4ed9f1deb7642dffa";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base StateVar transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/contravariant/";
  description = "Contravariant functors";
  license = lib.licenses.bsd3;
  broken = false;
}
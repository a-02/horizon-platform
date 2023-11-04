{ mkDerivation, base, lib, polysemy }:
mkDerivation {
  pname = "polysemy-several";
  version = "0.1.1.0";
  sha256 = "dc02a59d49b4c43b94022a3ab0a6b3cc2556e76fa1077529a4c2da31dede7641";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base polysemy ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Run several effects at once, taken from the polysemy-zoo";
  license = lib.licenses.mit;
  broken = false;
}
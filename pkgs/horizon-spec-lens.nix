{ mkDerivation, base, horizon-spec, lens, lib }:
mkDerivation {
  pname = "horizon-spec-lens";
  version = "0.1";
  sha256 = "b7db04f3e480eafba6c9c6ce5dc9758f5996dd5dede080313e48393b7c43b481";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base horizon-spec lens ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://horizon-haskell.net";
  description = "Horizon Stable Package Set Lenses";
  license = lib.licenses.mit;
  broken = false;
}

{ mkDerivation, base, lib, template-haskell }:
mkDerivation {
  pname = "template-haskell-compat-v0208";
  version = "0.1.9.3";
  sha256 = "92463b896ddc2ae13cb826e816b832958cea6bf8a8ed613b6a7854c48bbc2d62";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base template-haskell ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/template-haskell-compat-v0208";
  description = "Backward-compatibility layer for Template Haskell newer than 2.8";
  license = lib.licenses.mit;
  broken = false;
}
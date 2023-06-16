{ mkDerivation, base, lib, template-haskell }:
mkDerivation {
  pname = "template-haskell-compat-v0208";
  version = "0.1.9.2";
  sha256 = "c009e098660f8f8720bb6962663e4d9855516b285f83c3243b73e13eff42d7e9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base template-haskell ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/template-haskell-compat-v0208";
  description = "A backwards compatibility layer for Template Haskell newer than 2.8";
  license = lib.licenses.mit;
  broken = false;
}
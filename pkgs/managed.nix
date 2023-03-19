{ mkDerivation, base, lib, transformers }:
mkDerivation {
  pname = "managed";
  version = "1.0.10";
  sha256 = "3a22ca9d50c1efc2725ca244d60df0a79118119bef1aa2128589d93bbf99f759";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A monad for managed values";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, base, exceptions, lib, text, transformers }:
mkDerivation {
  pname = "transformers-except";
  version = "0.1.3";
  sha256 = "484babf024bd82e87cc8305bd38ae04d40a7c24fa81c487cc603c3c9fd230c0d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base exceptions text transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/tmcgilchrist/transformers-either/";
  description = "An Except monad transformer with";
  license = lib.licenses.bsd3;
  broken = false;
}
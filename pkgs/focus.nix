{ mkDerivation, base, lib, rerebase, tasty, tasty-hunit
, transformers
}:
mkDerivation {
  pname = "focus";
  version = "1.0.3.1";
  sha256 = "3d31ce2b4bd997eddcd2cfcf2d8afc81112fa8e00c4342e39da0f31a6c7a9098";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base transformers ];
  testHaskellDepends = [ rerebase tasty tasty-hunit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/focus";
  description = "A general abstraction for manipulating elements of container data structures";
  license = lib.licenses.mit;
  broken = false;
}
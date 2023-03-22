{ mkDerivation, QuickCheck, ansi-wl-pprint, base, lib, process
, transformers, transformers-compat
}:
mkDerivation {
  pname = "optparse-applicative";
  version = "0.17.0.0";
  sha256 = "825b2e4d3dafe0ba64a073366a88062b3712b81f851793d9ce2327bee70af724";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-wl-pprint base process transformers transformers-compat
  ];
  testHaskellDepends = [ base QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/pcapriotti/optparse-applicative";
  description = "Utilities and combinators for parsing command line options";
  license = lib.licenses.bsd3;
  broken = false;
}
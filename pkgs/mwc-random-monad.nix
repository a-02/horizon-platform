{ mkDerivation, base, lib, monad-primitive, mwc-random, primitive
, transformers, vector
}:
mkDerivation {
  pname = "mwc-random-monad";
  version = "0.7.3.1";
  sha256 = "d0f37917e646c9610dcbee4173c4ac50e054418f62623a42f19e3c0c39979440";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base monad-primitive mwc-random primitive transformers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Monadic interface for mwc-random";
  license = lib.licenses.bsd3;
  broken = false;
}
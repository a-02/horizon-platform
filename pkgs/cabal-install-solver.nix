{ mkDerivation, Cabal, Cabal-syntax, array, base, bytestring
, containers, edit-distance, filepath, lib, mtl, pretty, tasty
, tasty-hunit, tasty-quickcheck, transformers
}:
mkDerivation {
  pname = "cabal-install-solver";
  version = "3.8.1.0";
  sha256 = "df2369f6c37517a3b2625bc19057d9e206bbb40386bcb607f17dc7d2e588ffe7";
  revision = "1";
  editedCabalFile = "1g487j20pj03pc10yaha18v73wh3ackxjgfpfqaj7xznqcbm5xwm";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring Cabal Cabal-syntax containers edit-distance
    filepath mtl pretty transformers
  ];
  testHaskellDepends = [
    base Cabal Cabal-syntax tasty tasty-hunit tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/cabal/";
  description = "The command-line interface for Cabal and Hackage";
  license = lib.licenses.bsd3;
  broken = false;
}
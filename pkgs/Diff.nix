{ mkDerivation, QuickCheck, array, base, directory, lib, pretty
, process, test-framework, test-framework-quickcheck2
}:
mkDerivation {
  pname = "Diff";
  version = "0.4.1";
  sha256 = "fd5e4aaac7219bcbb14834fb8580ebe0aae905958d0ad74f5338ea290b372670";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ array base pretty ];
  testHaskellDepends = [
    array base directory pretty process QuickCheck test-framework
    test-framework-quickcheck2
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "O(ND) diff algorithm in haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
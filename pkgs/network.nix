{ mkDerivation, HUnit, QuickCheck, base, bytestring, deepseq
, directory, hspec, hspec-discover, lib, temporary
}:
mkDerivation {
  pname = "network";
  version = "3.1.2.8";
  sha256 = "fde2d4b065f1984c76755004c64a29ae9ec52c8bf74f2485d805ef577e7c7822";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring deepseq directory ];
  testHaskellDepends = [
    base bytestring directory hspec HUnit QuickCheck temporary
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/network";
  description = "Low-level networking interface";
  license = lib.licenses.bsd3;
  broken = false;
}
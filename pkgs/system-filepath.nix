{ mkDerivation, Cabal, QuickCheck, base, bytestring, chell
, chell-quickcheck, deepseq, lib, text
}:
mkDerivation {
  pname = "system-filepath";
  version = "0.4.14";
  sha256 = "1656ce3c0d585650784ceb3f794748286e19fb635f557e7b29b0897f8956d993";
  revision = "2";
  editedCabalFile = "0731bm8msw4gdaxy0dmya55w91yh9nk952ysf82n32c0nib1hdr4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal ];
  libraryHaskellDepends = [ base bytestring deepseq text ];
  testHaskellDepends = [
    base bytestring chell chell-quickcheck QuickCheck text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fpco/haskell-filesystem";
  description = "High-level, byte-based file and directory path manipulations (deprecated)";
  license = lib.licenses.mit;
  broken = false;
}
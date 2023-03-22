{ mkDerivation, HUnit, QuickCheck, base, base-compat, base-orphans
, deepseq, hashable, lib, tagged, tasty, tasty-hunit
, tasty-quickcheck, time
}:
mkDerivation {
  pname = "time-compat";
  version = "1.9.6.1";
  sha256 = "ad07bb00eb9678c2136d3680752b00acc4cbc522654bb3199bf31c61ef1e6b80";
  revision = "5";
  editedCabalFile = "0ryv5p2hgq5a6iyvh2r30sdlr7jn70cw8ypw5sc0hwbb1pxf2kfx";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base-orphans deepseq hashable time
  ];
  testHaskellDepends = [
    base base-compat deepseq hashable HUnit QuickCheck tagged tasty
    tasty-hunit tasty-quickcheck time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskellari/time-compat";
  description = "Compatibility package for time";
  license = lib.licenses.bsd3;
  broken = false;
}
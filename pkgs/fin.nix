{ mkDerivation, QuickCheck, base, boring, dec, deepseq, hashable
, inspection-testing, lib, some, tagged, universe-base
}:
mkDerivation {
  pname = "fin";
  version = "0.3";
  sha256 = "e20d0377e9c9a86b05959b6acb1ab3991dd977ffab46c56e239a5f4052e31c37";
  revision = "1";
  editedCabalFile = "14f3mg6hjwy8yycrkj8p925kwb6hjzy2hm6yb4fwl243w92yf5qa";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base boring dec deepseq hashable QuickCheck some universe-base
  ];
  testHaskellDepends = [ base inspection-testing tagged ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/vec";
  description = "Nat and Fin: peano naturals and finite numbers";
  license = lib.licenses.bsd3;
  broken = false;
}
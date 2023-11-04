{ mkDerivation, base, deepseq, indexed-traversable, lib, random
, tasty, tasty-bench, tasty-quickcheck
}:
mkDerivation {
  pname = "pqueue";
  version = "1.5.0.0";
  sha256 = "1bf88b8d2c4ac90dee3000684b6e0078502dc5a1030528b687aa143b3ecc1f02";
  revision = "1";
  editedCabalFile = "1n9gypnfgqlc1b6djjbkcr8r7bxqf8mpfd7avcf11s529gzk9qgg";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq indexed-traversable ];
  testHaskellDepends = [
    base deepseq indexed-traversable tasty tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base deepseq random tasty-bench ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/lspitzner/pqueue";
  description = "Reliable, persistent, fast priority queues";
  license = lib.licenses.bsd3;
  broken = false;
}
{ mkDerivation, base, deepseq, hashable, lib, rerebase
, semigroupoids, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "strict-list";
  version = "0.1.7.2";
  sha256 = "7dd3dad05ea79cbdb8b4d47bb9d4cde4c210d38674ba00cc959291cddf85f9ff";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq hashable semigroupoids ];
  testHaskellDepends = [ rerebase tasty tasty-quickcheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/strict-list";
  description = "Strict linked list";
  license = lib.licenses.mit;
  broken = false;
}
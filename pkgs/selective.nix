{ mkDerivation, QuickCheck, base, containers, lib, transformers }:
mkDerivation {
  pname = "selective";
  version = "0.7";
  sha256 = "cf1952b03aaa98db4706dbf57ed76b9fa46921fb71c2020d7ad59d721d741c36";
  revision = "1";
  editedCabalFile = "0ibky7kzs4rc0dz1m2116fb6q4ziwrb49vjbhfy6ns1qb205ag8f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers transformers ];
  testHaskellDepends = [ base containers QuickCheck transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/snowleopard/selective";
  description = "Selective applicative functors";
  license = lib.licenses.mit;
  broken = false;
}
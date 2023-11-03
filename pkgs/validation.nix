{ mkDerivation, HUnit, assoc, base, bifunctors, deepseq, hedgehog
, lens, lib, semigroupoids, semigroups
}:
mkDerivation {
  pname = "validation";
  version = "1.1.3";
  sha256 = "7b41e914cdca32a4e17667e3eea76219fadbf36b46e748bc5a4ab1a23fdd3795";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    assoc base bifunctors deepseq lens semigroupoids semigroups
  ];
  testHaskellDepends = [ base hedgehog HUnit lens semigroups ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/qfpl/validation";
  description = "A data-type like Either but with an accumulating Applicative";
  license = lib.licenses.bsd3;
  broken = false;
}
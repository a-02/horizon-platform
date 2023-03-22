{ mkDerivation, HUnit, assoc, base, bifunctors, deepseq, hedgehog
, lens, lib, semigroupoids, semigroups
}:
mkDerivation {
  pname = "validation";
  version = "1.1.2";
  sha256 = "1dcd52a577d06fbeb66a5acdeb125a438fc9aa4f07ef854cd93f4123a7f81096";
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
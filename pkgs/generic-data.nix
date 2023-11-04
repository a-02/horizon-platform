{ mkDerivation, ap-normalize, base, base-orphans, contravariant
, deepseq, generic-lens, ghc-boot-th, lib, one-liner
, show-combinators, tasty, tasty-bench, tasty-hunit
}:
mkDerivation {
  pname = "generic-data";
  version = "1.1.0.0";
  sha256 = "b12cbc4d99b35f3638aa47a5c45a8f1b3b633ac0d2fff24a0c10ec72089bbccb";
  revision = "1";
  editedCabalFile = "1njfdpp8rckkibixp89rz8dh4qmz67404gbwq2l0qmfcglzf997p";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ap-normalize base base-orphans contravariant ghc-boot-th
    show-combinators
  ];
  testHaskellDepends = [
    base generic-lens one-liner show-combinators tasty tasty-hunit
  ];
  benchmarkHaskellDepends = [ base deepseq tasty-bench ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Lysxia/generic-data#readme";
  description = "Deriving instances with GHC.Generics and related utilities";
  license = lib.licenses.mit;
  broken = false;
}
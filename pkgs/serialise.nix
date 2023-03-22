{ mkDerivation, QuickCheck, aeson, array, base, binary, bytestring
, cborg, cereal, cereal-vector, containers, criterion, deepseq
, directory, fail, filepath, ghc-prim, half, hashable, lib, pretty
, primitive, quickcheck-instances, semigroups, store, strict, tar
, tasty, tasty-hunit, tasty-quickcheck, text, these, time
, unordered-containers, vector, zlib
}:
mkDerivation {
  pname = "serialise";
  version = "0.2.6.0";
  sha256 = "93ff1888e1972999f14663072b38efcfd0c1481b4ec8e30ddc9c5ce97681a516";
  revision = "2";
  editedCabalFile = "0ng4gjxwv2arm1ybqkfl66p1lmcwacym8ygi6nnkygysgchwqa3b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring cborg containers ghc-prim half hashable
    primitive strict text these time unordered-containers vector
  ];
  testHaskellDepends = [
    base bytestring cborg containers directory filepath primitive
    QuickCheck quickcheck-instances tasty tasty-hunit tasty-quickcheck
    text time unordered-containers vector
  ];
  benchmarkHaskellDepends = [
    aeson array base binary bytestring cborg cereal cereal-vector
    containers criterion deepseq directory fail filepath ghc-prim half
    pretty semigroups store tar text time vector zlib
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/well-typed/cborg";
  description = "A binary serialisation library for Haskell values";
  license = lib.licenses.bsd3;
  broken = false;
}
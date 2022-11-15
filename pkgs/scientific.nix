{ mkDerivation
, base
, binary
, bytestring
, containers
, criterion
, deepseq
, hashable
, integer-logarithms
, lib
, primitive
, QuickCheck
, smallcheck
, tasty
, tasty-hunit
, tasty-quickcheck
, tasty-smallcheck
, template-haskell
, text
}:
mkDerivation {
  pname = "scientific";
  version = "0.3.7.0";
  sha256 = "a3a121c4b3d68fb8b9f8c709ab012e48f090ed553609247a805ad070d6b343a9";
  revision = "3";
  editedCabalFile = "1n67w1b64q59nn4845z3kr8rm0x0p7bi3cyp6n1dpnfs8k4l8x2i";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    binary
    bytestring
    containers
    deepseq
    hashable
    integer-logarithms
    primitive
    template-haskell
    text
  ];
  testHaskellDepends = [
    base
    binary
    bytestring
    QuickCheck
    smallcheck
    tasty
    tasty-hunit
    tasty-quickcheck
    tasty-smallcheck
    text
  ];
  benchmarkHaskellDepends = [ base criterion ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/basvandijk/scientific";
  description = "Numbers represented using scientific notation";
  license = lib.licenses.bsd3;
  broken = false;
}

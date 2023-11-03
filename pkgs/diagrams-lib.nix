{ mkDerivation, JuicyPixels, QuickCheck, active, adjunctions, array
, base, bytestring, cereal, colour, containers, criterion
, data-default-class, deepseq, diagrams-core, diagrams-solve
, directory, distributive, dual-tree, exceptions, fail, filepath
, fingertree, fsnotify, hashable, intervals, lens, lib, linear
, monoid-extras, mtl, numeric-extras, optparse-applicative, process
, profunctors, semigroups, tagged, tasty, tasty-hunit
, tasty-quickcheck, text, transformers, unordered-containers
}:
mkDerivation {
  pname = "diagrams-lib";
  version = "1.4.6";
  sha256 = "8bc92bdc50a654bfd59748f25dfa317a1d817b503cc8427af16bf2ab29a21ca8";
  revision = "3";
  editedCabalFile = "09b3hdmsk5byjm1jcq03zjb8fz7h3lid747abi3fq9bvsaqsp5ka";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    active adjunctions array base bytestring cereal colour containers
    data-default-class diagrams-core diagrams-solve directory
    distributive dual-tree exceptions fail filepath fingertree fsnotify
    hashable intervals JuicyPixels lens linear monoid-extras mtl
    optparse-applicative process profunctors semigroups tagged text
    transformers unordered-containers
  ];
  testHaskellDepends = [
    base deepseq diagrams-solve distributive lens numeric-extras
    QuickCheck tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base criterion diagrams-core ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://diagrams.github.io";
  description = "Embedded domain-specific language for declarative graphics";
  license = lib.licenses.bsd3;
  broken = false;
}
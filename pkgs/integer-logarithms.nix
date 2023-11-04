{ mkDerivation, QuickCheck, array, base, ghc-bignum, ghc-prim, lib
, smallcheck, tasty, tasty-hunit, tasty-quickcheck
, tasty-smallcheck
}:
mkDerivation {
  pname = "integer-logarithms";
  version = "1.0.3.1";
  sha256 = "9b0a9f9fab609b15cd015865721fb05f744a1bc77ae92fd133872de528bbea7f";
  revision = "5";
  editedCabalFile = "03f07vv1xqvv53fiarn4rpj2hzsa9bx7lw883axmgzv49qrzq3ad";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ array base ghc-bignum ghc-prim ];
  testHaskellDepends = [
    base QuickCheck smallcheck tasty tasty-hunit tasty-quickcheck
    tasty-smallcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskellari/integer-logarithms";
  description = "Integer logarithms";
  license = lib.licenses.mit;
  broken = false;
}
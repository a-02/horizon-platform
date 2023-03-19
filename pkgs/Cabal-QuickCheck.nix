{ mkDerivation, Cabal, Cabal-syntax, QuickCheck, base, bytestring
, fetchgit, lib
}:
mkDerivation {
  pname = "Cabal-QuickCheck";
  version = "3.10.1.0";
  src = fetchgit {
    url = "https://gitlab.haskell.org/ghc/packages/Cabal";
    sha256 = "19wz3prd374yfpb37v0zj2fxsf2aqvskbkwpwhnjqszn8j3ddihi";
    rev = "6c95f3fee3cdee859704b6476646cefd4628a850";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/Cabal-QuickCheck/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring Cabal Cabal-syntax QuickCheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "QuickCheck instances for types in Cabal";
  license = "unknown";
  broken = false;
}
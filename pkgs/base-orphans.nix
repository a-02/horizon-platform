{ mkDerivation, QuickCheck, base, ghc-prim, hspec, hspec-discover
, lib
}:
mkDerivation {
  pname = "base-orphans";
  version = "0.9.0";
  sha256 = "613ed4d8241ed5a648a59ae6569a6962990bb545711d020d49fb83fa12d16e62";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ghc-prim ];
  testHaskellDepends = [ base hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-compat/base-orphans#readme";
  description = "Backwards-compatible orphan instances for base";
  license = lib.licenses.mit;
  broken = false;
}
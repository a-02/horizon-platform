{ mkDerivation, QuickCheck, base, lib, numtype-dk, tasty
, tasty-hunit, tasty-quickcheck
}:
mkDerivation {
  pname = "exact-pi";
  version = "0.5.0.2";
  sha256 = "441dd2516902f13801c41310fa98ea82f7a946e8ddd2f775b19931f7e91eacf6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base numtype-dk ];
  testHaskellDepends = [
    base numtype-dk QuickCheck tasty tasty-hunit tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/dmcclean/exact-pi/";
  description = "Exact rational multiples of pi (and integer powers of pi)";
  license = lib.licenses.mit;
  broken = false;
}
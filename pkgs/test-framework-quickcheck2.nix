{ mkDerivation, QuickCheck, base, extensible-exceptions, lib
, random, test-framework
}:
mkDerivation {
  pname = "test-framework-quickcheck2";
  version = "0.3.0.5";
  sha256 = "c9f678d4ec30599172eb887031f0bce2012b532daeb713836bd912bff64eee59";
  revision = "3";
  editedCabalFile = "0mglqfimla4vvv80mg08aj76zf4993wmngqlirh05h8i9nmgv6lh";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base extensible-exceptions QuickCheck random test-framework
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://haskell.github.io/test-framework/";
  description = "QuickCheck-2 support for the test-framework package";
  license = lib.licenses.bsd3;
  broken = false;
}
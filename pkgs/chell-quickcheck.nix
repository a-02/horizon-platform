{ mkDerivation, QuickCheck, base, chell, lib, random }:
mkDerivation {
  pname = "chell-quickcheck";
  version = "0.2.5.3";
  sha256 = "1db092893f392665dcdb8c422cad8e8b6e7a6d6c84da35c50fc7a757d47ea2ae";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base chell QuickCheck random ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/typeclasses/chell";
  description = "QuickCheck support for the Chell testing library";
  license = lib.licenses.mit;
  broken = false;
}
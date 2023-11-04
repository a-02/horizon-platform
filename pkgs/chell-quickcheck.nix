{ mkDerivation, QuickCheck, base, chell, lib, random }:
mkDerivation {
  pname = "chell-quickcheck";
  version = "0.2.5.4";
  sha256 = "91543124f73b32f314ba67c7f39f7cb70563097f021dc394ce36e9629cd1cc10";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base chell QuickCheck random ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/typeclasses/chell";
  description = "QuickCheck support for Chell";
  license = lib.licenses.mit;
  broken = false;
}
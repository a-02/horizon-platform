{ mkDerivation, base, lib, mtl, time }:
mkDerivation {
  pname = "monad-time";
  version = "0.4.0.0";
  sha256 = "b4493edf9e7f839cb4ccfcdd53845de493bffbb3ceb4fbb54ba173db68192960";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base mtl time ];
  testHaskellDepends = [ base mtl time ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/scrive/monad-time";
  description = "Type class for monads which carry the notion of the current time";
  license = lib.licenses.bsd3;
  broken = false;
}
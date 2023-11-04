{ mkDerivation, base, lib }:
mkDerivation {
  pname = "parsec1";
  version = "1.0.0.8";
  sha256 = "c77136d16a8df43f40d39a09d133b924a86856899a40ae1295cf7062f37aea0b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Portable monadic parser combinators";
  license = lib.licenses.bsd3;
  broken = false;
}
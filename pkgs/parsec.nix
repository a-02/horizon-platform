{ mkDerivation, base, bytestring, lib, mtl, tasty, tasty-hunit
, text
}:
mkDerivation {
  pname = "parsec";
  version = "3.1.16.1";
  sha256 = "a41962e5d76ea68658876735b8d5b755e0eff336b079d0a2f439c364755d1246";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring mtl text ];
  testHaskellDepends = [ base mtl tasty tasty-hunit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/parsec";
  description = "Monadic parser combinators";
  license = lib.licenses.bsd2;
  broken = false;
}
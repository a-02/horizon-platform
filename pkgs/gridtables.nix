{ mkDerivation, array, base, containers, doclayout, lib, parsec
, tasty, tasty-hunit, text
}:
mkDerivation {
  pname = "gridtables";
  version = "0.1.0.0";
  sha256 = "d6ac341bc7997d39a3b1f6cd811f70ab69689d9c3117ce3bc44bfb2ec55ab0ea";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base containers doclayout parsec text
  ];
  testHaskellDepends = [ array base parsec tasty tasty-hunit text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/tarleb/gridtables";
  description = "Parser for reStructuredText-style grid tables";
  license = lib.licenses.mit;
  broken = false;
}
{ mkDerivation, base, lib, mtl, parsec, tasty, tasty-hunit, text }:
mkDerivation {
  pname = "jira-wiki-markup";
  version = "1.5.1";
  sha256 = "9ca23d369c3ccf1b3ffb209dda8e6288a5f5901fb8235113825fa48d3ae8e520";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base mtl parsec text ];
  executableHaskellDepends = [ base text ];
  testHaskellDepends = [ base parsec tasty tasty-hunit text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/tarleb/jira-wiki-markup";
  description = "Handle Jira wiki markup";
  license = lib.licenses.mit;
  broken = false;
}
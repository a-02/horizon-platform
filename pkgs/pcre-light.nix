{ mkDerivation, HUnit, base, bytestring, containers, lib, mtl, pcre
}:
mkDerivation {
  pname = "pcre-light";
  version = "0.4.1.0";
  sha256 = "16f6bfaa320bba91cd0c1a502d871c1c7a3a2de2d58dfaa2d90dba6558d51b53";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ];
  librarySystemDepends = [ pcre ];
  testHaskellDepends = [ base bytestring containers HUnit mtl ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Daniel-Diaz/pcre-light";
  description = "Portable regex library for Perl 5 compatible regular expressions";
  license = lib.licenses.bsd3;
  broken = false;
}
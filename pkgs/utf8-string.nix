{ mkDerivation, HUnit, base, bytestring, lib }:
mkDerivation {
  pname = "utf8-string";
  version = "1.0.2";
  sha256 = "ee48deada7600370728c4156cb002441de770d0121ae33a68139a9ed9c19b09a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ];
  testHaskellDepends = [ base HUnit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/glguy/utf8-string/";
  description = "Support for reading and writing UTF8 Strings";
  license = lib.licenses.bsd3;
  broken = false;
}
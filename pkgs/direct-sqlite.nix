{ mkDerivation, HUnit, base, base16-bytestring, bytestring
, directory, lib, temporary, text
}:
mkDerivation {
  pname = "direct-sqlite";
  version = "2.3.28";
  sha256 = "6744ff6cd66482bdb788a437e8970e27ae971906e52d75b68b3e6be7d03b8a44";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring text ];
  testHaskellDepends = [
    base base16-bytestring bytestring directory HUnit temporary text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/IreneKnapp/direct-sqlite";
  description = "Low-level binding to SQLite3. Includes UTF8 and BLOB support.";
  license = lib.licenses.bsd3;
  broken = false;
}
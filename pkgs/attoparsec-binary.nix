{ mkDerivation, attoparsec, base, bytestring, lib }:
mkDerivation {
  pname = "attoparsec-binary";
  version = "0.2";
  sha256 = "05e6445b20b396c99275de3e37bf8bb18559a5666ad5136907857bf574e77a0b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ attoparsec base bytestring ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Binary processing extensions to Attoparsec";
  license = lib.licenses.bsd3;
  broken = false;
}
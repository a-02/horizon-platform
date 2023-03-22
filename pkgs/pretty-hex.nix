{ mkDerivation, base, bytestring, lib }:
mkDerivation {
  pname = "pretty-hex";
  version = "1.1";
  sha256 = "27c78f299151a9a844f4a2c0f629fb99160901e78f78a688cb088bd532501731";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A library for hex dumps of ByteStrings";
  license = lib.licenses.bsd3;
  broken = false;
}
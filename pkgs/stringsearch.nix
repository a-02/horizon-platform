{ mkDerivation, array, base, bytestring, containers, lib }:
mkDerivation {
  pname = "stringsearch";
  version = "0.3.6.6";
  sha256 = "295f1971920bc52263d8275d7054ad223a7e1aefe75533f9887735c9644ffe4a";
  revision = "1";
  editedCabalFile = "0z5pz5dccapz9k39r2zmf056m0x2m2lj3jahhnw3mfxlmps07378";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ array base bytestring containers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://bitbucket.org/dafis/stringsearch";
  description = "Fast searching, splitting and replacing of ByteStrings";
  license = lib.licenses.bsd3;
  broken = false;
}
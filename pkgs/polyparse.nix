{ mkDerivation, base, bytestring, lib, text }:
mkDerivation {
  pname = "polyparse";
  version = "1.13";
  sha256 = "1c4c72980e1e5a4f07fea65ca08b2399581d2a6aa21eb1078f7ad286c279707b";
  revision = "6";
  editedCabalFile = "0xrmzz7p2akgdyr7gm54yvq83lm9qixcrk72ia2w9xcs2r4b76vz";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://code.haskell.org/~malcolm/polyparse/";
  description = "A variety of alternative parser combinator libraries";
  license = "LGPL";
  broken = false;
}
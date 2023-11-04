{ mkDerivation, QuickCheck, base, hedgehog, lib, transformers }:
mkDerivation {
  pname = "hedgehog-quickcheck";
  version = "0.1.1";
  sha256 = "97b65db815fdfaacc7c4d06a7b9b74680b50264afa03f839c4037dcc875152fc";
  revision = "6";
  editedCabalFile = "0ymfpbnywq83xbz1rmp8w3piikgvzriczwcvhir125nk50mgp0xz";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base hedgehog QuickCheck transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hedgehog.qa";
  description = "Use QuickCheck generators in Hedgehog and vice versa";
  license = lib.licenses.bsd3;
  broken = false;
}
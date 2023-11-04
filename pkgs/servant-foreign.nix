{ mkDerivation, base, base-compat, hspec, hspec-discover
, http-types, lens, lib, servant, text
}:
mkDerivation {
  pname = "servant-foreign";
  version = "0.16";
  sha256 = "bbaeb1e42a335fa5f65e837deee782db77b61f068093170eafd2b3763ac8f196";
  revision = "1";
  editedCabalFile = "17rnd7dnkj5p8jpbmlgysacrdxxhczd4ll8r5r3bpd56yhj8wm2c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base-compat http-types lens servant text
  ];
  testHaskellDepends = [ base hspec servant ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://docs.servant.dev/";
  description = "Helpers for generating clients for servant APIs in any programming language";
  license = lib.licenses.bsd3;
  broken = false;
}
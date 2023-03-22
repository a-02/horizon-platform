{ mkDerivation, base, base-compat, directory, exceptions, filepath
, lib, random, tasty, tasty-hunit, transformers, unix
}:
mkDerivation {
  pname = "temporary";
  version = "1.3";
  sha256 = "8c442993694b5ffca823ce864af95bd2841fb5264ee511c61cf48cc71d879890";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base directory exceptions filepath random transformers unix
  ];
  testHaskellDepends = [
    base base-compat directory filepath tasty tasty-hunit unix
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/feuerbach/temporary";
  description = "Portable temporary file and directory support";
  license = lib.licenses.bsd3;
  broken = false;
}
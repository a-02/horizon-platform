{ mkDerivation, base, doctest, first-class-families, lib, syb
, template-haskell, th-abstraction
}:
mkDerivation {
  pname = "type-errors";
  version = "0.2.0.2";
  sha256 = "697cffdd1ec573d6b8d1539976673f93bb562ee97b644077e2305bfefc897c83";
  revision = "1";
  editedCabalFile = "1ayzhw2dqswka0r8xwdjr2vbaf1angaj7zaqxa80lww2nlxv7mmg";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base first-class-families syb template-haskell th-abstraction
  ];
  testHaskellDepends = [
    base doctest first-class-families syb template-haskell
    th-abstraction
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/isovector/type-errors#readme";
  description = "Tools for writing better type errors";
  license = lib.licenses.bsd3;
  broken = false;
}
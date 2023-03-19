{ mkDerivation, base, directory, filepath, hspec, hspec-core
, hspec-discover, lib, optparse-applicative, silently
}:
mkDerivation {
  pname = "hspec-golden";
  version = "0.2.0.1";
  sha256 = "bc64db188b166235d92a3d42efc6c29a41535fda41830cbb03b7e5b9d75d8725";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base directory filepath hspec-core ];
  executableHaskellDepends = [ base directory optparse-applicative ];
  testHaskellDepends = [ base directory hspec hspec-core silently ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/stackbuilders/hspec-golden#readme";
  description = "Golden tests for hspec";
  license = lib.licenses.mit;
  broken = false;
}
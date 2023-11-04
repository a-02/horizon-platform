{ mkDerivation, aeson, base, effectful-core, fetchgit, lib
, log-base, text, time
}:
mkDerivation {
  pname = "log-effectful";
  version = "1.0.0.0";
  src = fetchgit {
    url = "https://github.com/haskell-effectful/log-effectful/";
    sha256 = "0d8h0cf64032dcvckmh17xd3lvg8g3a6k4y1xfhgzyn7bm4aj14m";
    rev = "910c79e10d5ac3353f2a1551103a2b63229c3f57";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base effectful-core log-base text time ];
  testHaskellDepends = [ aeson base effectful-core log-base text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Adaptation of the log library for the effectful ecosystem";
  license = lib.licenses.bsd3;
  broken = false;
}
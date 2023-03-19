{ mkDerivation, base, lib, system-cxx-std-lib }:
mkDerivation {
  pname = "tidal-link";
  version = "1.0.1";
  sha256 = "612d2670302d401250fab9b5be96ba4416905bfa841ce11857b267d2ff387d68";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base system-cxx-std-lib ];
  executableHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://tidalcycles.org/";
  description = "Ableton Link integration for Tidal";
  license = lib.licenses.gpl3Only;
  broken = false;
}
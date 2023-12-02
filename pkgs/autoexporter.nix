{ mkDerivation, Cabal, base, directory, filepath, lib }:
mkDerivation {
  pname = "autoexporter";
  version = "2.0.0.9";
  sha256 = "cf24938e9f243fb7ba7c623c3126e42f0f525f7759d797fcc04fbf2476a078e6";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base Cabal directory filepath ];
  executableHaskellDepends = [ base Cabal directory filepath ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Automatically re-export modules";
  license = lib.licenses.mit;
  broken = false;
}
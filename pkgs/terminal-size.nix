{ mkDerivation, base, lib }:
mkDerivation {
  pname = "terminal-size";
  version = "0.3.4";
  sha256 = "b0f070d6926cdaacf3a412c5518e5c23afca1e0ed00808a5328c96e468b67f49";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Get terminal window height and width";
  license = lib.licenses.bsd3;
  broken = false;
}
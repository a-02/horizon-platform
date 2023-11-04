{ mkDerivation, base, lib }:
mkDerivation {
  pname = "fusion-plugin-types";
  version = "0.1.0";
  sha256 = "6d0453886b0aca46ab311b8ac8031fd249417e96a1b675248fca196565f59f92";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/composewell/fusion-plugin-types";
  description = "Types for the fusion-plugin package";
  license = lib.licenses.bsd3;
  broken = false;
}
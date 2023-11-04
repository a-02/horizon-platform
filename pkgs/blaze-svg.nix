{ mkDerivation, base, blaze-markup, lib, mtl }:
mkDerivation {
  pname = "blaze-svg";
  version = "0.3.7";
  sha256 = "4c7c61e67381eeefa30b563004ae639679651aaac499a37ca457d49d7fe8165f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base blaze-markup mtl ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/diagrams/blaze-svg";
  description = "SVG combinator library";
  license = lib.licenses.bsd3;
  broken = false;
}
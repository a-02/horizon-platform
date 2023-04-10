{ mkDerivation, base, dhall, lib, version-natural }:
mkDerivation {
  pname = "version-natural-dhall-instance";
  version = "0.1.0.0";
  sha256 = "a47f06e0a0bb4dc73b745fdc76b853761be63868fad3b01ded3919ff2a85ecd7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base dhall version-natural ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "FromDhall and ToDhall instances for version-natural";
  license = lib.licenses.mit;
  broken = false;
}
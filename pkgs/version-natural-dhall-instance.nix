{ mkDerivation, base, dhall, lib, version-natural }:
mkDerivation {
  pname = "version-natural-dhall-instance";
  version = "0.2.0.0";
  sha256 = "0627906a6ca6d1fc8bae4909db6b3fe87daf564805ea3696b7a3e91dbeb5a85a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base dhall version-natural ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "FromDhall and ToDhall instances for version-natural";
  license = lib.licenses.mit;
  broken = false;
}
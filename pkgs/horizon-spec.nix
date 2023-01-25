{ mkDerivation
, base
, containers
, dhall
, lib
, path
, path-dhall-instance
, prettyprinter
, sydtest
, text
}:
mkDerivation {
  pname = "horizon-spec";
  version = "0.5";
  sha256 = "ad53944bff29788217e58608c312eb6186700821be8db78090e53c94f4783656";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    dhall
    path
    path-dhall-instance
    text
  ];
  executableHaskellDepends = [
    base
    dhall
    prettyprinter
    sydtest
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://horizon-haskell.net";
  description = "Horizon Stable Package Set Type Definitions";
  license = lib.licenses.mit;
  broken = false;
}

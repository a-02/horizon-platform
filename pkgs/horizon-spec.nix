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
  version = "0.6.1";
  sha256 = "97840918baa16cc175560645d1cd3bf762f7b6133d9c44f1c4da152431f65ada";
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

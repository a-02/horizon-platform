{ mkDerivation
, base
, containers
, dhall
, fetchgit
, lib
, path
, path-dhall-instance
, template-haskell
, text
, th-lift
}:
mkDerivation {
  pname = "horizon-spec";
  version = "0.10.0";
  src = fetchgit {
    url = "https://gitlab.horizon-haskell.net/haskell/horizon-spec";
    sha256 = "1c5a1n8c2rf765zrqq4l0lcdikriw9f7ca5l0xa6sy1cpdhg3sgh";
    rev = "7c5ca21695f5964cca852d2d6d43729c7418ace7";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/horizon-spec/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    dhall
    path
    path-dhall-instance
    template-haskell
    text
    th-lift
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

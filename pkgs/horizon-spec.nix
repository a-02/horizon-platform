{ mkDerivation
, base
, containers
, dhall
, fetchzip
, lib
, path
, path-dhall-instance
, template-haskell
, text
, th-lift
}:
mkDerivation {
  pname = "horizon-spec";
  version = "0.11.0";
  src = fetchzip {
    url = "https://gitlab.horizon-haskell.net/haskell/horizon-spec/-/archive/0.11.0/horizon-spec-0.11.0.tar.gz";
    sha256 = "0jhpivaafwg9a75qj0aq1lirhvhx4404l8bdsx794sbjqifnwnxn";
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

{ mkDerivation
, Cabal-syntax
, base
, cabal2nix
, containers
, dhall
, directory
, distribution-nixpkgs
, either
, fetchzip
, horizon-spec
, language-nix
, lens
, lib
, optparse-applicative
, path
, path-dhall-instance
, pretty
, silently
, sydtest
, text
}:
mkDerivation {
  pname = "horizon-gen-nix";
  version = "0.8.0";
  src = fetchzip {
    url = "https://gitlab.horizon-haskell.net/haskell/horizon-gen-nix/-/archive/master/horizon-gen-nix-master.tar.gz";
    sha256 = "0yix3z210v9jpsw5pxiz0r8rj03r1j91jq5fxy6qgf3bavv3i005";
  };
  postUnpack = "sourceRoot+=/horizon-gen-nix/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    Cabal-syntax
    cabal2nix
    containers
    dhall
    directory
    distribution-nixpkgs
    either
    horizon-spec
    language-nix
    lens
    optparse-applicative
    path
    path-dhall-instance
    pretty
    silently
    text
  ];
  executableHaskellDepends = [ base directory path sydtest ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Generate nix expressions from horizon-spec definitions";
  license = lib.licenses.mit;
  broken = false;
}

{ mkDerivation, Cabal-syntax, base, cabal2nix, containers, dhall
, directory, distribution-nixpkgs, either, fetchzip, horizon-spec
, language-nix, lens, lib, optparse-applicative, path
, path-dhall-instance, pretty, raw-strings-qq, silently, sydtest
, text
}:
mkDerivation {
  pname = "horizon-gen-nix";
  version = "0.9.0";
  src = fetchzip {
    url = "https://gitlab.horizon-haskell.net/haskell/horizon-gen-nix/-/archive/0.9.0/horizon-gen-nix-0.9.0.tar.gz";
    sha256 = "0jmrpkn56kykisj7zki4ib1zhm6m4qxbzhgz9k4lmf0gh4w37iln";
  };
  postUnpack = "sourceRoot+=/horizon-gen-nix/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base Cabal-syntax cabal2nix containers dhall directory
    distribution-nixpkgs either horizon-spec language-nix lens
    optparse-applicative path path-dhall-instance pretty raw-strings-qq
    silently text
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
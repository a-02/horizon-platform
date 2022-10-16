{ mkDerivation, aeson, ansi-wl-pprint, base, bytestring, Cabal
, containers, deepseq, directory, distribution-nixpkgs, fetchgit
, filepath, hackage-db, hopenssl, hpack, language-nix, lens, lib
, monad-par, monad-par-extras, mtl, optparse-applicative, pretty
, process, split, tasty, tasty-golden, text, time, transformers
, yaml
}:
mkDerivation {
  pname = "cabal2nix";
  version = "2.19.0";
  src = fetchgit {
    url = "https://github.com/NixOS/cabal2nix";
    sha256 = "0ym6lyp4br57442b6a9cg9bczbjqz8nz984rxwiacldqzndk8jbr";
    rev = "b3ae6f9240d07ba103f1eb7ab22f6055e9cdb7dc";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cabal2nix/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson ansi-wl-pprint base bytestring Cabal containers deepseq
    directory distribution-nixpkgs filepath hackage-db hopenssl hpack
    language-nix lens optparse-applicative pretty process split text
    time transformers yaml
  ];
  executableHaskellDepends = [
    aeson base bytestring Cabal containers directory
    distribution-nixpkgs filepath hopenssl language-nix lens monad-par
    monad-par-extras mtl optparse-applicative pretty
  ];
  testHaskellDepends = [
    base Cabal containers directory filepath language-nix lens pretty
    process tasty tasty-golden
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  preCheck = ''
    export PATH="$PWD/dist/build/cabal2nix:$PATH"
    export HOME="$TMPDIR/home"
  '';
  homepage = "https://github.com/nixos/cabal2nix#readme";
  description = "Convert Cabal files into Nix build instructions";
  license = lib.licenses.bsd3;
}
{

  description = "Horizon Haskell Platform";

  nixConfig = {
    extra-substituters = "https://horizon.cachix.org";
    extra-trusted-public-keys = "horizon.cachix.org-1:MeEEDRhRZTgv/FFGCv3479/dmJDfJ82G6kfUDxMSAw0=";
  };

  inputs = {
    devenv.url = "github:cachix/devenv";
    get-flake.url = "github:ursi/get-flake";
    flake-parts.url = "github:hercules-ci/flake-parts";
    horizon-platform = {
      url = "git+https://gitlab.horizon-haskell.net/package-sets/horizon-platform";
      flake = false;
    };
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    inputs@
    { self
    , devenv
    , get-flake
    , flake-parts
    , horizon-platform
    , lint-utils
    , nixpkgs
    , ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "aarch64-darwin" "x86_64-darwin" "x86_64-linux" ];
      perSystem = { config, system, ... }:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        with pkgs.lib;
        with pkgs.writers;
        with lint-utils.writers.${system};
        let

          horizon-platform-prev = get-flake horizon-platform;

          horizon-gen-nix = pkgs.writeShellApplication {
            name = "horizon-gen-nix";
            runtimeInputs = with pkgs; [ ghc cabal-install ];
            text = ''
              ${horizon-platform-prev.legacyPackages.${system}.horizon-gen-nix}/bin/horizon-gen-nix;
              ${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt pkgs/*
              ${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt initial-packages.nix
            '';
          };

          haskellLib = pkgs.haskell.lib.compose;

          legacyPackages = pkgs.callPackage (nixpkgs + /pkgs/development/haskell-modules) {
            buildHaskellPackages = pkgs.haskell.packages.ghc944;
            compilerConfig = pkgs.callPackage ./configuration-ghc.nix { inherit haskellLib; };
            configurationArm = { pkgs, haskellLib }: self: super: { };
            configurationCommon = import ./configuration.nix;
            configurationDarwin = import ./configuration-darwin.nix;
            configurationNix = { pkgs, haskellLib }: self: super: { };
            ghc = pkgs.haskell.compiler.ghc944;
            inherit haskellLib;
            initialPackages = import ./initial-packages.nix;
            nonHackagePackages = self: super: { };
          };

          packages = filterAttrs
            (n: v: v != null
              && builtins.typeOf v == "set"
              && pkgs.lib.hasAttr "type" v
              && v.type == "derivation"
              && v.meta.broken == false)
            legacyPackages;

        in
        {

          checks = with lint-utils.linters.${system}; {
            dhall-format = dhall-format { src = self; };
            nixpkgs-fmt = nixpkgs-fmt { src = self; };
            stylish-haskell = stylish-haskell { src = self; };
          };

          devShells.default = devenv.lib.mkShell {
            inherit inputs pkgs;
            modules = [
              ({ pkgs, ... }: {
                packages = [ horizon-gen-nix pkgs.nixpkgs-fmt ];
              })
            ];
          };

          inherit legacyPackages;

          inherit packages;

        };
    };
}

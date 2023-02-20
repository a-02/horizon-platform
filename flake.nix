{

  description = "Haskell Horizon Platform";

  inputs = {
    get-flake.url = "github:ursi/get-flake";
    flake-parts.url = "github:hercules-ci/flake-parts";
    horizon-gen-nix-flake.url = "git+https://gitlab.homotopic.tech/horizon/horizon-gen-nix";
    horizon-platform = {
      url = "git+https://gitlab.homotopic.tech/horizon/horizon-platform";
      flake = false;
    };
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    inputs@
    { self
    , get-flake
    , flake-parts
    , horizon-platform
    , horizon-gen-nix-flake
    , lint-utils
    , nixpkgs
    , ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" ];
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
              cabal update
              ${horizon-gen-nix-flake.legacyPackages.${system}.horizon-gen-nix}/bin/horizon-gen-nix;
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
            configurationDarwin = { pkgs, haskellLib }: self: super: { };
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

          run-impure-tests = writePorcelainOrDieBin {
            name = "run-impure-tests";
            src = ./.;
            command = ''
              export PATH=$PATH:${pkgs.nix-prefetch-git}/bin:${pkgs.cabal-install}/bin
              cabal update
              rm pkgs -rf && nix run .#horizon-gen-nix;
              nixpkgs-fmt pkgs/*
            '';
            advice = "Try removing the offending packages from pkgs/ and running nix run .#horizon-gen-nix";
          };

          run-impure-tests-app = {
            type = "app";
            program = "${run-impure-tests}/bin/run-impure-tests";
          };

          procex = import ./shell/default.nix { haskellPackages = horizon-platform-prev.legacyPackages.${system}; inherit (pkgs) runCommand writeShellScriptBin; };
        in
        {

          apps = {

            horizon-gen-nix = {
              type = "app";
              program = "${horizon-gen-nix}/bin/horizon-gen-nix";
            };

            procex = {
              type = "app";
              program = "${procex}/bin/procex-shell";
            };

            run-impure-tests = run-impure-tests-app;
          };

          checks = with lint-utils.linters.${system}; {
            dhall-format = dhall-format { src = self; };
            nixpkgs-fmt = nixpkgs-fmt { src = self; };
            stylish-haskell = stylish-haskell { src = self; };
          };

          inherit legacyPackages;

          inherit packages;

        };
    };
}

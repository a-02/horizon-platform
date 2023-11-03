{

  nixConfig = {
    extra-substituters = "https://horizon.cachix.org";
    extra-trusted-public-keys = "horizon.cachix.org-1:MeEEDRhRZTgv/FFGCv3479/dmJDfJ82G6kfUDxMSAw0=";
  };

  inputs = {
    feedback.url = "github:NorfairKing/feedback";
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-to-gitlab-ci.url = "git+https://gitlab.nixica.dev/haskell/flake-to-gitlab-ci?ref=refs/tags/0.2.4.2";
    horizon-gen-nix.url = "git+https://gitlab.horizon-haskell.net/haskell/horizon-gen-nix?ref=refs/tags/0.11.0";
    horizon-shell.url = "git+https://gitlab.horizon-haskell.net/shells/horizon-shell?ref=refs/tags/0.0.9";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    inputs@
    { self
    , flake-parts
    , nixpkgs
    , ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; }
      {
        systems = [
          "aarch64-darwin"
          "x86_64-darwin"
          "x86_64-linux"
        ];
        perSystem = { system, pkgs, ... }:
          let
            cachix-push-horizon-ghc-only = pkgs.writers.writeBashBin "cachix-push-horizon-ghc-only" ''
              nix build -L --json .#packages.x86_64-linux.ghc | ${pkgs.jq}/bin/jq -r '.[].outputs | to_entries[].value' | ${pkgs.cachix}/bin/cachix push horizon
            '';

            cachix-push-horizon-devour = pkgs.writers.writeBashBin "cachix-push-horizon-devour" ''
              nix build github:srid/devour-flake -L --no-link --print-out-paths --override-input flake . | xargs cat | ${pkgs.cachix}/bin/cachix push horizon
            '';

            devour-flake = pkgs.writers.writeBashBin "devour-flake" ''
              nix build github:srid/devour-flake -L --no-link --print-out-paths --override-input flake . --keep-going
            '';

            test-template = pkgs.writers.writeBashBin "test-template" ''
              mkdir temp
              cd temp
              nix flake init -t 'git+https://gitlab.horizon-haskell.net/templates/horizon-templates#minimal'
              git init .
              git add *
              nix build github:srid/devour-flake -L --no-link --print-out-paths --override-input flake . --override-input flake/horizon-platform ../ --keep-going
              cd ..
              rm temp -rf
            '';

            run-horizon-gen-nix = pkgs.writers.writeBashBin "run-horizon-gen-nix" ''
              ${pkgs.cabal-install}/bin/cabal update
              ${inputs.horizon-gen-nix.packages.${system}.default}/bin/horizon-gen-nix $@;
            '';

          in
          {

            apps = {
              cachix-push-horizon-devour = {
                type = "app";
                program = "${cachix-push-horizon-devour}/bin/cachix-push-horizon-devour";
              };
              cachix-push-horizon-ghc-only = {
                type = "app";
                program = "${cachix-push-horizon-ghc-only}/bin/cachix-push-horizon-ghc-only";
              };
              devour-flake = {
                type = "app";
                program = "${devour-flake}/bin/devour-flake";
              };
              feedback = {
                type = "app";
                program = "${inputs.feedback.packages.${system}.default}/bin/feedback";
              };
              flake-to-gitlab-ci = inputs.flake-to-gitlab-ci.apps.${system}.default;
              horizon-gen-nix = inputs.horizon-gen-nix.apps.${system}.default;
              horizon-shell = inputs.horizon-shell.apps.${system}.default;
              run-horizon-gen-nix = {
                program = "${run-horizon-gen-nix}/bin/run-horizon-gen-nix";
                type = "app";
              };
              test-template = {
                type = "app";
                program = "${test-template}/bin/test-template";
              };
            };

          };
      };
}

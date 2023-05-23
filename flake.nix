{

  description = "Horizon Haskell Platform";

  nixConfig = {
    extra-substituters = "https://horizon.cachix.org";
    extra-trusted-public-keys = "horizon.cachix.org-1:MeEEDRhRZTgv/FFGCv3479/dmJDfJ82G6kfUDxMSAw0=";
  };

  inputs = {
    get-flake.url = "github:ursi/get-flake";
    flake-parts.url = "github:hercules-ci/flake-parts";
    horizon-core.url = "git+https://gitlab.horizon-haskell.net/package-sets/horizon-core?ref=sts-945";
    horizon-shell-flake = {
      url = "git+https://gitlab.horizon-haskell.net/shells/horizon-shell?ref=refs/tags/0.0.8";
      flake = false;
    };
    lint-utils.url = "git+https://gitlab.nixica.dev/nix/lint-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    inputs@
    { self
    , get-flake
    , flake-parts
    , horizon-core
    , horizon-shell-flake
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
        let
          horizon-shell = get-flake horizon-shell-flake;

          haskellLib = pkgs.haskell.lib;


          overrides = composeManyExtensions [
            (import ./overlay.nix { inherit pkgs; })
            (import ./configuration/common.nix { inherit pkgs haskellLib; })
            (import (./configuration + "/${system}.nix") { inherit pkgs haskellLib; })
          ];

          legacyPackages = horizon-core.legacyPackages.${system}.extend overrides;

          packages = filterAttrs (_: isDerivation) legacyPackages;

          devShell = pkgs.mkShell {
            buildInputs = [
              horizon-shell.packages.${system}.default
            ];
            shellHook = ''
              horizon-shell
              exit
            '';
          };

        in
        {

          checks = with lint-utils.linters.${system}; {
            dhall-format = dhall-format { src = self; };
            nixpkgs-fmt = nixpkgs-fmt { src = self; find = "flake.nix"; };
          };

          devShells.default = devShell;

          inherit legacyPackages;

          inherit packages;

        };
    };
}

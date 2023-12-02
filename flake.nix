{

  description = "Horizon Haskell Platform";

  nixConfig = {
    extra-substituters = "https://horizon.cachix.org";
    extra-trusted-public-keys = "horizon.cachix.org-1:MeEEDRhRZTgv/FFGCv3479/dmJDfJ82G6kfUDxMSAw0=";
  };

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    horizon-core.url = "git+https://gitlab.horizon-haskell.net/package-sets/horizon-core?ref=lts/ghc-9.4.x";
    horizon-hoogle.url = "git+https://gitlab.horizon-haskell.net/nix/horizon-hoogle";
    lint-utils.url = "git+https://gitlab.nixica.dev/nix/lint-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    inputs@
    { self
    , flake-parts
    , horizon-core
    , lint-utils
    , nixpkgs
    , ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "aarch64-darwin"
        "x86_64-darwin"
        "x86_64-linux"
      ];
      imports = [
        inputs.horizon-hoogle.flakeModule
      ];
      perSystem = { config, system, ... }:
        let
          pkgs = nixpkgs.legacyPackages.${system};

        in
        with pkgs.lib;
        let
          haskellLib = pkgs.haskell.lib;

          overrides = composeManyExtensions [
            (import ./overlay.nix { inherit pkgs; })
            (import ./configuration/common.nix { inherit pkgs haskellLib; })
            (import (./configuration + "/${system}.nix") { inherit pkgs haskellLib; })
          ];

          legacyPackages = horizon-core.legacyPackages.${system}.extend overrides;

          packages = filterAttrs (_: isDerivation) legacyPackages;

        in
        {

          checks = with lint-utils.linters.${system}; {
            dhall-format = dhall-format { src = self; };
            nixpkgs-fmt = nixpkgs-fmt { src = self; find = "flake.nix"; };
          };

          inherit legacyPackages;

          inherit packages;

        };
    };
}

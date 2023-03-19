{

  description = "Horizon Haskell Platform";

  nixConfig = {
    extra-substituters = "https://horizon.cachix.org";
    extra-trusted-public-keys = "horizon.cachix.org-1:MeEEDRhRZTgv/FFGCv3479/dmJDfJ82G6kfUDxMSAw0=";
  };

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    inputs@
    { self
    , flake-parts
    , lint-utils
    , nixpkgs
    , ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "aarch64-darwin" "x86_64-darwin" "x86_64-linux" ];
      perSystem = { config, system, ... }:
        let
          pkgs = nixpkgs.legacyPackages.${system};

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

          packages = pkgs.lib.filterAttrs
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
            nixpkgs-fmt = nixpkgs-fmt { src = self; find = "flake.nix"; };
          };

          inherit legacyPackages;

          inherit packages;

        };
    };
}

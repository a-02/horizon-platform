# Horizon Haskell Platform

[horizon-haskell.net](https://horizon-haskell.net).

Horizon is a haskell package set targetting new builds of GHC.

## Package Set Policy

This package set has the following policy.

* GHC will advance as often as possible
* Nonversioned locations (git, unversioned tarballs) are permitted to allow
  GHC to advance.
* The following packages must always build:
  * aeson
  * beam-postgres
  * composite-base
  * dhall
  * haskell-language-server
  * hedgehog
  * pandoc
  * persistent-postgresql
  * polysemy
  * servant
  * sydtest
  * tasty
  * wai-app-static
  * warp

## Updating the Package Set

Generating the nix expressions for the package set is a two step process.

1. Edit the `horizon.dhall` file.
2. Generate the nix expressions with `nix run develop/#horizon-gen-nix`.

You can edit the `horizon.dhall` file in one of two ways: manually using a text
editor, or programatically using `horizon-shell`.

### Using horizon-shell.

To use `horizon-shell`.

```
nix run develop/#horizon-shell
```

This is a haskell interpreter with a few shortcut functions available. Running
`tryToUpgradeEverything` will poll hackage for any potential updates and add
them to the dhall file. This will only modify the dhall, not the nix
expressions. You must remember to run `nix run develop/#horizon-gen-nix`
afterwards.

To quickly add a new package to the dhall, use the `addHackage` function. For example
`addHackage "optics"`.

## Tweaking & Hacking

If you need to do additional manual overrides to the nix code, such as
`addPkgconfigDepends`, edit the `configuration/common.nix` overlay, which is
applied over the generated derivations.

If you need to nullify libraries, use the `configuration/hacking.nix` overlay.
Try to leave a note as to why this library has been nullified.

## Feedback

To build all packages, run

```
nix run develop/#feedback -- build
```

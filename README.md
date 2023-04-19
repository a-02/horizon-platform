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

## Updating the package set

The package set is generated from the `horizon.dhall`. You can edit this in one
of two ways: manually using a text edit, or programatically using
`horizon-shell`.

### Manual

Edit the `horizon.dhall` file and add or change some package data.

Run `horizon-gen-nix` from the remote repository.

```
nix run 'git+https://gitlab.horizon-haskell.net/haskell/horizon-gen-nix?ref=refs/tags/0.10.0'
```

### Programatic

To use `horizon-shell`.

```
nix develop
```

See the in-shell help for usage.

### Tweaking

If you need to do additional manual overrides to the nix code, such as
`addPkgconfigDepends`, edit the `configuration/common.nix` overlay, which is
applied last.

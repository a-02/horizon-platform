# Haskell Horizon Platform

[horizon-haskell.net](https://horizon-haskell.net).

Horizon is a haskell package set targetting new builds of GHC.

## Getting started

You an can use this package set instead of your haskell packages set in
nixpkgs. To see an example you can use the template supplied with this
repository.

```
mkdir myProject
cd myProject
nix flake init -t 'git+https://gitlab.homotopic.tech/horizon/horizon-templates'
```

## Updating the package set

The package set is generated from the `horizon.dhall` using the following command:

```
nix run .#horizon-gen-nix
```

This will generate both the packages folder and the package set file. If you
want to regenerate a particular package in the packages folder, delete that file
from the packages folder. To regenerate the entire package set from scratch,
delete the packages folder.

If you need to do additional manual overrides to the nix code, such as
`addPkgconfigDepends`, edit the `configuration.nix` overlay, which is applied
afterwards.

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
  * xmonad-contrib
  * xmonad
  * wai-app-static
  * warp
* Tags will be of the form `unstable-<yyyy>-<mm>-<dd>-r<N>` where any
  unversioned source is used.
* Tags will be of the form `stable-<yyyy>-<mm>-<dd>-r<N>` where all
stable sources are used.

## Commit Policy

* All commits should evaluate with `nix flake show`.
* All commits should pass all checks with `nix flake check`.
* All derivations in `packages` should build.
* Where possible, commits should be atomic, of the form
  * foo: init at <version>
  * foo: <old-version> -> <new-version>
* If multiple packages need to be maintained in lockstep,
  the commit message should contain all changes.

## ChangeLog Policy

* ChangeLogs should clearly show source stability changes between versions,
  of the form:
  * stabilized source: aeson, lens
  * destabilized source: pandoc

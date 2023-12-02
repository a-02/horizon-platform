{ pkgs, haskellLib }:

with haskellLib;

final: prev: {

  digits = overrideCabal
    prev.digits
    (_:
      {
        patches = [
          ./patches/digits-01.patch
      ];
    });

  libsodium = prev.callPackage ../pkgs/libsodium.nix { inherit (pkgs) libsodium; };

  saltine = addPkgconfigDepend prev.saltine pkgs.libsodium;

  text-icu = prev.callPackage ../pkgs/text-icu.nix { icu-i18n = pkgs.icu; };

  X11-xft = addPkgconfigDepends prev.X11-xft [ pkgs.expat pkgs.xorg.libXau pkgs.xorg.libXdmcp ];

}

{ pkgs, haskellLib }:

with haskellLib;

final: prev: {

  Cabal-QuickCheck = null;

  Cabal-described = null;

  Cabal-tree-diff = null;

  base64-bytestring-type = null;

  digest = addExtraLibrary prev.digest pkgs.zlib;

  digits = overrideCabal
    prev.digits
    (_:
      {
        patches = [
          ./patches/digits-01.patch
        ];
      });

  hopenssl = prev.hopenssl.override { openssl = pkgs.openssl; };

  libsodium = prev.callPackage ../pkgs/libsodium.nix { inherit (pkgs) libsodium; };

  saltine = addPkgconfigDepend prev.saltine pkgs.libsodium;

  sandwich = null;

  text-icu = prev.callPackage ../pkgs/text-icu.nix { icu-i18n = pkgs.icu; };

  sdl2-gfx = addSetupDepends
    (overrideCabal prev.sdl2-gfx
      { __onlyPropagateKnownPkgConfigModules = true; }
    )
    [ pkgs.pkg-config pkgs.SDL2 ];

  sdl2-image =
    addSetupDepends
      (overrideCabal prev.sdl2-image
        { __onlyPropagateKnownPkgConfigModules = true; }
      )
      [ pkgs.pkg-config pkgs.SDL2 pkgs.libtiff pkgs.libwebp ];

  sdl2-mixer =
    addSetupDepends
      (overrideCabal prev.sdl2-mixer
        { __onlyPropagateKnownPkgConfigModules = true; }
      )
      [ pkgs.pkg-config pkgs.SDL2 pkgs.libsndfile pkgs.libpulseaudio pkgs.alsa-lib pkgs.jack2 pkgs.glib pkgs.pcre2 ];

  sdl2-ttf =
    addSetupDepends
      (overrideCabal prev.sdl2-ttf
        { __onlyPropagateKnownPkgConfigModules = true; }
      )
      [ pkgs.pkg-config pkgs.SDL2 pkgs.SDL2_ttf pkgs.harfbuzz pkgs.freetype pkgs.glib pkgs.pcre2 ];

  X11-xft = addPkgconfigDepends prev.X11-xft [ pkgs.expat pkgs.xorg.libXau pkgs.xorg.libXdmcp ];

}

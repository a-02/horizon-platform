{ pkgs, haskellLib }:

with haskellLib;

final: prev: {

  digest = addExtraLibrary prev.digest pkgs.zlib;

  hopenssl = prev.hopenssl.override { openssl = pkgs.openssl; };

  libsodium = prev.callPackage ../pkgs/libsodium.nix { inherit (pkgs) libsodium; };

  saltine = addPkgconfigDepend prev.saltine pkgs.libsodium;

  splitmix = prev.callPackage ../pkgs/splitmix.nix { inherit (pkgs) testu01; };

  text-icu = prev.callPackage ../pkgs/text-icu.nix { icu-i18n = pkgs.icu; };

  sdl2-image = addPkgconfigDepends prev.sdl2-image [ pkgs.libtiff pkgs.libdeflate pkgs.libwebp ];

  sdl2-mixer = addPkgconfigDepends prev.sdl2-mixer [ pkgs.glib pkgs.pcre2 pkgs.libsndfile pkgs.libpulseaudio pkgs.alsa-lib pkgs.jack2 ];

  X11-xft = addPkgconfigDepends prev.X11-xft [ pkgs.expat pkgs.xorg.libXau pkgs.xorg.libXdmcp ];

  zlib = prev.callPackage ../pkgs/zlib.nix { inherit (pkgs) zlib; };
}

{ pkgs, haskellLib }:

with pkgs.haskell.lib;

final: prev: {

  alsa-core = null;

  alsa-mixer = null;

  iwlib = null;

  libsystemd-journal = null;

  sdl2-mixer = null;

}


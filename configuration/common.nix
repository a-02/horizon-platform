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

  ghcide-bench = null;

  ghcide-test-utils = null;

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

  # hls needs to be compiled fairly differently, because it's dynamic we need
  # to turn off profiling else ghc tries to look for dynamic profiled modules
  # which cannot exist.
  haskell-language-server = overrideCabal prev.haskell-language-server {
    enableLibraryProfiling = false;
    enableExecutableProfiling = false;
    enableSharedExecutables = true;
    preCheck = ''
      export PATH=$PATH:$PWD/dist/build/haskell-language-server:$PWD/dist/build/haskell-language-server-wrapper
      export HOME=$TMPDIR
    '';
    postInstall = ''
      RUNPATH=`patchelf --print-rpath $out/bin/haskell-language-server | cut -d: -f2-`
      GHC_VERSION=`ghc --version | awk '{print $NF;}'`
      mv "$out/bin/haskell-language-server" "$out/bin/.haskell-language-server-''${GHC_VERSION}-unwrapped"
      BOOT_PKGS=`ghc-pkg-$GHC_VERSION --global list --simple-output`
      ${pkgs.gnused}/bin/sed \
        -e "s!@@EXE_DIR@@!$out/bin!" \
        -e "s/@@EXE_NAME@@/.haskell-language-server-''${GHC_VERSION}-unwrapped/" \
        -e "s/@@GHC_VERSION@@/$GHC_VERSION/" \
        -e "s/@@BOOT_PKGS@@/$BOOT_PKGS/" \
        -e "s/@@ABI_HASHES@@/$(for dep in $BOOT_PKGS; do printf "%s:" "$dep" && ghc-pkg-$GHC_VERSION field $dep abi --simple-output ; done | tr '\n' ' ' | xargs)/" \
        -e "s!Consider installing ghc.* via ghcup or build HLS from source.!Visit https://haskell4nix.readthedocs.io/nixpkgs-users-guide.html#how-to-install-haskell-language-server to lear how to correctly install a matching hls for your ghc with nix.!" \
        bindist/wrapper.in > "$out/bin/haskell-language-server"
      ln -s "$out/bin/haskell-language-server" "$out/bin/haskell-language-server-$GHC_VERSION"
      chmod +x "$out/bin/haskell-language-server"
    '';
  };
}

{ haskellPackages, writeShellScriptBin, runCommand }:

let

  shellrcSrcPath = ./.;
  shellrcModule = "ShellRC";

  shellrcSrc = shellrcSrcPath;
  shellrcModulePath = builtins.replaceStrings [ "." ] [ "/" ] shellrcModule + ".hs";

  ghc = haskellPackages.ghcWithPackages (p: with p; [
    brick
    bytestring
    containers
    cursor
    dhall
    http-conduit
    horizon-gen-nix
    horizon-spec
    lens
    lens-aeson
    path
    polysemy-plugin
    polysemy
    procex
    text
    vector
    yaml
  ]);

  args = builtins.concatStringsSep " " [
    "-XDataKinds"
    "-XExtendedDefaultRules"
    "-XGHC2021"
    "-XOverloadedStrings"
    "-XOverloadedLabels"
    "-Wall"
    "-Wno-type-defaults"
  ];

  shellrc = runCommand "shellrc" { } ''
    cp ${shellrcSrc} --no-preserve=all -rT $out
    ${ghc}/bin/ghc -c -dynamic --make -i"$out" ${args} $out/${shellrcModulePath}
  '';

  init = runCommand "ghci-init" { } ''
    cat > $out <<END
      :set +m -interactive-print Text.Pretty.Simple.pPrint

      :l ${shellrcModule}

      import Procex.Shell.Labels

      :set prompt-function promptFunction

      _init
    END
    grep -E '^import .*$' < ${shellrcSrc}/${shellrcModulePath} >> $out
  '';

in

(writeShellScriptBin "procex-shell" ''

  home="$HOME/.local/share/ghci-shell"

  mkdir -p "$home"

  exec env GHCRTS="-c" HOME="$home" REALHOME="$HOME" ${ghc}/bin/ghci ${args} -ignore-dot-ghci -i -i${shellrc} -ghci-script ${init} "$@"

'').overrideAttrs (old: old // { passthru = { shellPath = "/bin/procex-shell"; }; })

{ pkgs, haskellLib }:

with haskellLib;

final: prev: {

  cheapskate = null;

  digits = overrideCabal
    prev.digits
    (_:
      {
        patches = [
          ./patches/digits-01.patch
      ];
    });

  hasql-th = overrideCabal
    prev.hasql-th
    (_:
      {
        patches = [
          ./patches/hasql-th-01.patch
      ];
    });

  hasql-transaction = overrideCabal
    prev.hasql-transaction
    (_:
      {
        patches = [
          ./patches/hasql-transaction-01.patch
          ./patches/hasql-transaction-02.patch
      ];
    });

  headed-megaparsec = overrideCabal
    prev.headed-megaparsec
    (_:
      {
        patches = [
          ./patches/headed-megaparsec-01.patch
      ];
    });

  html-entities = overrideCabal
    prev.html-entities
    (_:
      {
        patches = [
          ./patches/html-entities-01.patch
      ];
    });

  libsodium = prev.callPackage ../pkgs/libsodium.nix { inherit (pkgs) libsodium; };

  linear-generics = overrideCabal
    prev.linear-generics
    (_:
      {
        patches = [
          ./patches/linear-generics-01.patch
          ./patches/linear-generics-02.patch
      ];
    });

  postgresql-syntax = overrideCabal
    prev.postgresql-syntax
    (_:
      {
        patches = [
          ./patches/postgresql-syntax-01.patch
      ];
    });

  saltine = addPkgconfigDepend prev.saltine pkgs.libsodium;

  sandwich = null;

  text-icu = prev.callPackage ../pkgs/text-icu.nix { icu-i18n = pkgs.icu; };

  xml-conduit-writer = overrideCabal
    prev.xml-conduit-writer
    (_:
      {
        patches = [
          ./patches/xml-conduit-writer-01.patch
      ];
    });


  X11-xft = addPkgconfigDepends prev.X11-xft [ pkgs.expat pkgs.xorg.libXau pkgs.xorg.libXdmcp ];

}

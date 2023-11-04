{ mkDerivation, base, base16-bytestring, bytestring, containers
, cryptohash-sha256, dhall, directory, doctest, file-embed
, filepath, foldl, lens-family-core, lib, lucid, megaparsec, mmark
, mtl, optparse-applicative, path, path-io, pretty, prettyprinter
, tasty, tasty-hunit, tasty-silver, text, transformers, turtle
}:
mkDerivation {
  pname = "dhall-docs";
  version = "1.0.11";
  sha256 = "984aa37da15a393b7009c17bf0c9f55819446dc2f82e5b0faf654f71c5ff2c45";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base base16-bytestring bytestring containers cryptohash-sha256
    dhall directory file-embed filepath lens-family-core lucid
    megaparsec mmark mtl optparse-applicative path path-io
    prettyprinter text transformers
  ];
  executableHaskellDepends = [ base dhall ];
  testHaskellDepends = [
    base bytestring containers dhall directory doctest filepath foldl
    lucid path path-io pretty tasty tasty-hunit tasty-silver text
    turtle
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Generate HTML docs from a dhall package";
  license = lib.licenses.bsd3;
  broken = false;
}
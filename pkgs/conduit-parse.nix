{ mkDerivation, base, conduit, dlist, lib, mtl, parsers, resourcet
, safe, safe-exceptions, tasty, tasty-hunit, text, transformers
}:
mkDerivation {
  pname = "conduit-parse";
  version = "0.2.1.1";
  sha256 = "07fb28868ce016b5e1b5fd033c9c73340a09c13140003f070a6952842a01acf5";
  revision = "1";
  editedCabalFile = "102y5wad007bz8iqv1nrz38gb24q15k9snl7l7zq9k7pisdxnans";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base conduit dlist mtl parsers safe safe-exceptions text
    transformers
  ];
  testHaskellDepends = [
    base conduit mtl parsers resourcet safe-exceptions tasty
    tasty-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/k0ral/conduit-parse";
  description = "Parsing framework based on conduit";
  license = lib.licenses.publicDomain;
  broken = false;
}
{ mkDerivation
, Diff
, QuickCheck
, aeson
, attoparsec
, base
, base64-bytestring
, binary
, bytestring
, case-insensitive
, colour
, containers
, criterion
, directory
, filepath
, lib
, mtl
, pretty-show
, safe
, tasty
, tasty-golden
, tasty-hunit
, tasty-quickcheck
, text
, transformers
, utf8-string
, xml-conduit
}:
mkDerivation {
  pname = "skylighting-core";
  version = "0.13.1.1";
  sha256 = "dab79d597f3fee1762a72bba69028c361cfbecaaa548155e0b99ab497d662933";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    attoparsec
    base
    base64-bytestring
    binary
    bytestring
    case-insensitive
    colour
    containers
    directory
    filepath
    mtl
    safe
    text
    transformers
    utf8-string
    xml-conduit
  ];
  testHaskellDepends = [
    aeson
    base
    bytestring
    containers
    Diff
    directory
    filepath
    pretty-show
    QuickCheck
    tasty
    tasty-golden
    tasty-hunit
    tasty-quickcheck
    text
  ];
  benchmarkHaskellDepends = [
    base
    containers
    criterion
    filepath
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jgm/skylighting";
  description = "syntax highlighting library";
  license = lib.licenses.bsd3;
  broken = false;
}

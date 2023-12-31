{ mkDerivation, Diff, QuickCheck, aeson, attoparsec, base
, base64-bytestring, binary, bytestring, case-insensitive, colour
, containers, criterion, directory, filepath, lib, mtl, pretty-show
, safe, tasty, tasty-golden, tasty-hunit, tasty-quickcheck, text
, transformers, utf8-string, xml-conduit
}:
mkDerivation {
  pname = "skylighting-core";
  version = "0.14.1";
  sha256 = "8b3c0584eefaf58e88afa7b07cdaacaaa4210934e13fe5f077316ff9488bc3c4";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson attoparsec base base64-bytestring binary bytestring
    case-insensitive colour containers directory filepath mtl safe text
    transformers utf8-string xml-conduit
  ];
  testHaskellDepends = [
    aeson base bytestring containers Diff directory filepath
    pretty-show QuickCheck tasty tasty-golden tasty-hunit
    tasty-quickcheck text
  ];
  benchmarkHaskellDepends = [
    base containers criterion filepath text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jgm/skylighting";
  description = "syntax highlighting library";
  license = lib.licenses.bsd3;
  broken = false;
}
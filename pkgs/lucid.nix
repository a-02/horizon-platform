{ mkDerivation, HUnit, base, bifunctors, blaze-builder, bytestring
, containers, criterion, deepseq, hashable, hspec, lib, mmorph, mtl
, parsec, text, transformers
}:
mkDerivation {
  pname = "lucid";
  version = "2.11.20230408";
  sha256 = "0f112990fee9c5b1c62c64c926147272534781ed8a7225d39dd0248a670f441d";
  revision = "1";
  editedCabalFile = "1gb3b79xf4jp0xvk2anlvpvac6gqcfpffylkwki19lrx6jbd8fqs";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base blaze-builder bytestring containers hashable mmorph mtl text
    transformers
  ];
  testHaskellDepends = [
    base bifunctors hspec HUnit mtl parsec text
  ];
  benchmarkHaskellDepends = [
    base blaze-builder bytestring criterion deepseq text transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/chrisdone/lucid";
  description = "Clear to write, read and edit DSL for HTML";
  license = lib.licenses.bsd3;
  broken = false;
}
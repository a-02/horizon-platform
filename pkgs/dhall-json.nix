{ mkDerivation, aeson, aeson-pretty, aeson-yaml, ansi-terminal
, base, bytestring, containers, dhall, exceptions, filepath
, lens-family-core, lib, optparse-applicative, prettyprinter
, prettyprinter-ansi-terminal, scientific, tasty, tasty-hunit
, tasty-silver, text, unordered-containers, vector
}:
mkDerivation {
  pname = "dhall-json";
  version = "1.7.12";
  sha256 = "ca48cd434380cbd979dbb12889f90da8fdc1ea90bc266cab14f061c60e19d5fa";
  revision = "1";
  editedCabalFile = "0rf3zlr75x6g4hl1759j21fnnrp21shc7a35x7c73a0xyzpviqqi";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson aeson-pretty aeson-yaml base bytestring containers dhall
    exceptions filepath lens-family-core optparse-applicative
    prettyprinter scientific text unordered-containers vector
  ];
  executableHaskellDepends = [
    aeson aeson-pretty ansi-terminal base bytestring dhall exceptions
    optparse-applicative prettyprinter prettyprinter-ansi-terminal text
  ];
  testHaskellDepends = [
    aeson base bytestring dhall tasty tasty-hunit tasty-silver text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Convert between Dhall and JSON or YAML";
  license = lib.licenses.bsd3;
  broken = false;
}
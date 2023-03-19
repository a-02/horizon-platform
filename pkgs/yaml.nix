{ mkDerivation, HUnit, aeson, attoparsec, base, base-compat
, bytestring, conduit, containers, directory, filepath, hspec, lib
, libyaml, mockery, mtl, raw-strings-qq, resourcet, scientific
, template-haskell, temporary, text, transformers
, unordered-containers, vector
}:
mkDerivation {
  pname = "yaml";
  version = "0.11.11.0";
  sha256 = "4c95c00bd2e134cd5c2a9c7032bcadac300fa2b8ed794ac61637a28431580023";
  configureFlags = [ "-fsystem-libyaml" ];
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson attoparsec base bytestring conduit containers directory
    filepath libyaml mtl resourcet scientific template-haskell text
    transformers unordered-containers vector
  ];
  testHaskellDepends = [
    aeson attoparsec base base-compat bytestring conduit containers
    directory filepath hspec HUnit libyaml mockery mtl raw-strings-qq
    resourcet scientific template-haskell temporary text transformers
    unordered-containers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/snoyberg/yaml#readme";
  description = "Support for parsing and rendering YAML documents";
  license = lib.licenses.bsd3;
  broken = false;
}
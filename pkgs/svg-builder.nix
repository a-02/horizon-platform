{ mkDerivation, base, blaze-builder, bytestring, hashable, lib
, text, unordered-containers
}:
mkDerivation {
  pname = "svg-builder";
  version = "0.1.1";
  sha256 = "4fd0e3f2cbc5601fc69e7eab41588cbfa1150dc508d9d86bf5f3d393880382cc";
  revision = "6";
  editedCabalFile = "1cprm8ya1rdid4pz1dk6692mv0kqkaxrsqaxg83bca5z4dkgqi2z";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base blaze-builder bytestring hashable text unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/diagrams/svg-builder.git";
  description = "DSL for building SVG";
  license = lib.licenses.bsd3;
  broken = false;
}
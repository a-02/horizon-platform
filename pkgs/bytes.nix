{ mkDerivation, base, binary, binary-orphans, bytestring, cereal
, containers, hashable, lib, mtl, scientific, text, time
, transformers, transformers-compat, unordered-containers, void
}:
mkDerivation {
  pname = "bytes";
  version = "0.17.2";
  sha256 = "bc55f41edad589bc0ba389e8b106d7425a87390dcd5f1371e3194a9cc2c4781a";
  revision = "1";
  editedCabalFile = "0frs6ag93kmg2fw3vd686czx8g7h9qmdn1ip6wdk96d94ap0fz9i";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base binary binary-orphans bytestring cereal containers hashable
    mtl scientific text time transformers transformers-compat
    unordered-containers void
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/ekmett/bytes";
  description = "Sharing code for serialization between binary and cereal";
  license = lib.licenses.bsd3;
  broken = false;
}
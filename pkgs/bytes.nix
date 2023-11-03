{ mkDerivation, base, binary, binary-orphans, bytestring, cereal
, containers, hashable, lib, scientific, text, time, transformers
, transformers-compat, unordered-containers, void
}:
mkDerivation {
  pname = "bytes";
  version = "0.17.3";
  sha256 = "d10acf05802d4df9646d7aed1b4ebcee13fb38f243f1525caaef1f2e1fd929c7";
  revision = "1";
  editedCabalFile = "1jj5fk23wvvvlbkxcpvgp69gglbf719ard5g795irbcx11zkhjd2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base binary binary-orphans bytestring cereal containers hashable
    scientific text time transformers transformers-compat
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
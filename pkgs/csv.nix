{ mkDerivation, base, fetchgit, filepath, lib, parsec }:
mkDerivation {
  pname = "csv";
  version = "0.1.2";
  src = fetchgit {
    url = "https://gitlab.homotopic.tech/horizon/adopted/csv";
    sha256 = "1idv0500imfvi6wzz3g7v89irz9g20plsphp51aa0xksz7ifj34b";
    rev = "d02b89bbad79136b52fd1197f087466cf51573dd";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base filepath parsec ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "CSV loader and dumper";
  license = lib.licenses.mit;
  broken = false;
}
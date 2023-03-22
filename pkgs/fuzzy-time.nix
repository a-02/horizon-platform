{ mkDerivation, base, containers, deepseq, lib, megaparsec, text
, time, validity, validity-time
}:
mkDerivation {
  pname = "fuzzy-time";
  version = "0.2.0.3";
  sha256 = "5ee4ce435d95810f4d3ae9bbe860fa34ad1d81d4cfe54c9804a809e0b48dc28e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers deepseq megaparsec text time validity validity-time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/fuzzy-time";
  license = lib.licenses.mit;
  broken = false;
}
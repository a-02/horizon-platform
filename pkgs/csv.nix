{ mkDerivation, base, filepath, lib, parsec }:
mkDerivation {
  pname = "csv";
  version = "0.1.2";
  sha256 = "8cf43442325faa1368f9b55ad952beccf677d9980cdffa3d70a7f204a23ae600";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base filepath parsec ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "CSV loader and dumper";
  license = lib.licenses.mit;
  broken = false;
}

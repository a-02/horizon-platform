{ mkDerivation, base, lib }:
mkDerivation {
  pname = "foreign-store";
  version = "0.2";
  sha256 = "06718a214d068eaa494cc82376f23b2059a141b01048cd7efcf2176a6c3383dc";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/chrisdone/foreign-store";
  description = "Store a stable pointer in a foreign context to be retrieved later";
  license = lib.licenses.bsd3;
  broken = false;
}
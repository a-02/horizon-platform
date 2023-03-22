{ mkDerivation, base, case-insensitive, genvalidity-hspec, hspec
, lib, validity
}:
mkDerivation {
  pname = "validity-case-insensitive";
  version = "0.0.0.0";
  sha256 = "2d5896b50bcfa69f68242a05ad6d08bc8b61975ab5041749ecc5551cf7ebb71c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base case-insensitive validity ];
  testHaskellDepends = [
    base case-insensitive genvalidity-hspec hspec validity
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "Validity instances for case-insensitive";
  license = lib.licenses.mit;
  broken = false;
}
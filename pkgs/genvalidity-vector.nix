{ mkDerivation, QuickCheck, base, genvalidity, genvalidity-hspec
, hspec, lib, validity, validity-vector, vector
}:
mkDerivation {
  pname = "genvalidity-vector";
  version = "1.0.0.0";
  sha256 = "fe0dd139da3cafe4a4e05ed19e3efb46743f92743f95615fefbd8027dd925fd0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base genvalidity QuickCheck validity validity-vector vector
  ];
  testHaskellDepends = [
    base genvalidity genvalidity-hspec hspec vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "GenValidity support for vector";
  license = lib.licenses.mit;
  broken = false;
}
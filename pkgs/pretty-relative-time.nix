{ mkDerivation, QuickCheck, base, genvalidity, genvalidity-hspec
, genvalidity-time, hspec, lib, time, validity, validity-time
}:
mkDerivation {
  pname = "pretty-relative-time";
  version = "0.3.0.0";
  sha256 = "709d1fd8cbb92a5af3ee1de1801e7412b322f45a419cc55103caa704d7f90deb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base time validity validity-time ];
  testHaskellDepends = [
    base genvalidity genvalidity-hspec genvalidity-time hspec
    QuickCheck time validity validity-time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/pretty-relative-time#readme";
  description = "Pretty relative time";
  license = lib.licenses.mit;
  broken = false;
}